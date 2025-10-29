<?php
if (session_status() === PHP_SESSION_NONE) {
    session_start();
}

ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

require_once __DIR__ . '/../../db/conexion.php';
require_once __DIR__ . '/../../functions/functions_agrupar_competencias.php';

$documento = $_GET['doc'] ?? null;
$aprendiz = null;
$idAprendiz = null;

if (!$documento) {
    echo "<p style='color:red;'>Documento no válido.</p>";
    exit;
}

// 1. Obtener datos del aprendiz
$stmt1 = $conn->prepare("SELECT * FROM aprendices WHERE N_Documento = ?");
$stmt1->bind_param("s", $documento);
$stmt1->execute();
$result1 = $stmt1->get_result();
$aprendiz = $result1->fetch_assoc();

if (!$aprendiz) {
    echo "<p style='color:red;'>Aprendiz no encontrado.</p>";
    exit;
}

$idAprendiz = $aprendiz['Id_aprendiz'] ?? null;

// 2. Obtener juicios evaluativos
$stmt2 = $conn->prepare("SELECT * FROM juicios_evaluativos WHERE N_Documento = ? ORDER BY Competencia, Resultado_aprendizaje, Fecha_registro DESC");
$stmt2->bind_param("s", $documento);
$stmt2->execute();
$resultado = $stmt2->get_result();

// 3. Agrupar competencias
$resultado->data_seek(0);
list($competencias_agrupadas, $materias_organizadas) = agruparCompetencias($resultado);

//4. Obtener el estado de formación desde el último juicio evaluativo registrado
$stmt_estado = $conn->prepare("SELECT Estado_formacion FROM juicios_evaluativos WHERE N_Documento = ? ORDER BY Fecha_registro DESC LIMIT 1");
$stmt_estado->bind_param("s", $documento);
$stmt_estado->execute();
$res_estado = $stmt_estado->get_result();
$estado_formacion = $res_estado->fetch_assoc()['Estado_formacion'] ?? 'No registrado';

// 5. Obtener número de ficha desde ficha_aprendiz
$ficha_numero = 'No asignada';
if ($idAprendiz) {
    $stmt_ficha = $conn->prepare("
        SELECT f.numero_ficha 
        FROM ficha_aprendiz fa
        INNER JOIN fichas f ON fa.Id_ficha = f.Id_ficha
        WHERE fa.Id_aprendiz = ?
        LIMIT 1
    ");
    $stmt_ficha->bind_param("i", $idAprendiz);
    $stmt_ficha->execute();
    $res_ficha = $stmt_ficha->get_result();
    $ficha_numero = $res_ficha->fetch_assoc()['numero_ficha'] ?? 'No asignada';
}
?>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet">
    <link rel="stylesheet" href="assets/css/competencias.css">
    <link rel="stylesheet" href="assets/css/header.css">
    <link rel="stylesheet" href="assets/css/footer.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Juicios de <?= htmlspecialchars($aprendiz['nombre'] ?? '') ?></title>
</head>
<body>
<main class="main-content">
    <h1 class="page-title">Juicios Evaluativos de <?= htmlspecialchars($aprendiz['nombre'] ?? '') ?> <?= htmlspecialchars($aprendiz['apellido'] ?? '') ?></h1>

    <div class="search-section">
        <div class="search-container">
            <button class="btn-generate-report" onclick="generarPDF()">
                <i class="fas fa-file-pdf"></i>
                DESCARGAR PDF
            </button>
        </div>
    </div>

    <div class="content-grid">
        <?php foreach ($materias_organizadas as $categoria => $materias_categoria): ?>
            <?php if (!empty($materias_categoria)): ?>
                <div class="category-column">
                    <div class="card category-card">
                        <div class="card-header category-header">
                            <span class="card-title"><?= htmlspecialchars($categoria) ?></span>
                        </div>
                        <div class="card-content category-content">
                            <?php foreach ($materias_categoria as $materia => $competencias_materia): ?>
                                <?php if (!empty($competencias_materia)): ?>
                                    <div class="subject-section">
                                        <div class="subject-header">
                                            <span class="subject-title"><?= htmlspecialchars($materia) ?></span>
                                            <div class="subject-stats">
                                                <?php
                                                $total_resultados = 0;
                                                $aprobados = 0;
                                                foreach ($competencias_materia as $juicios) {
                                                    foreach ($juicios as $juicio) {
                                                        $estado = strtolower(trim($juicio['Juicio'] ?? ''));
                                                        $total_resultados++;
                                                        if ($estado === 'aprobado') $aprobados++;
                                                    }
                                                }
                                                ?>
                                                <span class="stats-badge"><?= $aprobados ?>/<?= $total_resultados ?></span>
                                            </div>
                                        </div>
                                        <div class="subject-content">
                                            <div class="results-container">
                                                <?php foreach ($competencias_materia as $competencia => $juicios_de_la_competencia): ?>
                                                    <?php
                                                    $tiene_no_aprobado = false;
                                                    $tiene_por_evaluar = false;
                                                    $todos_aprobados = true;

                                                    foreach ($juicios_de_la_competencia as $j) {
                                                        $estado = strtolower(trim($j['Juicio'] ?? ''));
                                                        if ($estado === 'no aprobado') {
                                                            $tiene_no_aprobado = true;
                                                            $todos_aprobados = false;
                                                            break;
                                                        } elseif ($estado === 'por evaluar' || $estado === '') {
                                                            $tiene_por_evaluar = true;
                                                            $todos_aprobados = false;
                                                        } elseif ($estado !== 'aprobado') {
                                                            $todos_aprobados = false;
                                                        }
                                                    }

                                                    if ($todos_aprobados) {
                                                        $estado_comp = 'Aprobado';
                                                        $clase_comp = 'status-approved';
                                                        $icono = 'fa-check-circle';
                                                    } elseif ($tiene_no_aprobado) {
                                                        $estado_comp = 'No Aprobado';
                                                        $clase_comp = 'status-rejected';
                                                        $icono = 'fa-times-circle';
                                                    } else {
                                                        $estado_comp = 'Por Evaluar';
                                                        $clase_comp = 'status-pending';
                                                        $icono = 'fa-clock';
                                                    }
                                                    ?>

                                                    <div class="competencia-container">
                                                        <div class="competencia-header">
                                                            <strong><?= htmlspecialchars($competencia) ?></strong>
                                                            <span class="result-status <?= $clase_comp ?>">
                                                                <i class="fas <?= $icono ?>"></i>
                                                                <?= $estado_comp ?>
                                                            </span>
                                                        </div>
                                                        <div class="competencia-body">
                                                            <div class="results-header">
                                                                <span>Resultados de Aprendizaje</span>
                                                                <span>Instructor</span>
                                                                <span>Estado</span>
                                                            </div>
                                                            <?php foreach ($juicios_de_la_competencia as $j): ?>
                                                                <div class="result-item">
                                                                    <div class="result-code">
                                                                        <div class="result-description"><?= htmlspecialchars($j['Resultado_aprendizaje'] ?? '') ?></div>
                                                                        <div class="result-date">
                                                                            <small><i class="fas fa-calendar"></i> <?= isset($j['Fecha_registro']) ? date('d/m/Y', strtotime($j['Fecha_registro'])) : 'N/A' ?></small>
                                                                        </div>
                                                                    </div>
                                                                    <div class="result-instructor">
                                                                        <i class="fas fa-user"></i>
                                                                        <?= htmlspecialchars($j['Funcionario_registro'] ?? 'N/A') ?>
                                                                    </div>
                                                                    <?php
                                                                    $estado = strtolower(trim($j['Juicio'] ?? ''));
                                                                    $clase = 'status-pending';
                                                                    $texto = 'Por Evaluar';
                                                                    $icono = 'fa-clock';
                                                                    if ($estado === 'aprobado') {
                                                                        $clase = 'status-approved';
                                                                        $texto = 'Aprobado';
                                                                        $icono = 'fa-check-circle';
                                                                    } elseif ($estado === 'no aprobado') {
                                                                        $clase = 'status-rejected';
                                                                        $texto = 'No Aprobado';
                                                                        $icono = 'fa-times-circle';
                                                                    }
                                                                    ?>
                                                                    <div class="result-status <?= $clase ?>">
                                                                        <i class="fas <?= $icono ?>"></i>
                                                                        <?= $texto ?>
                                                                    </div>
                                                                </div>
                                                            <?php endforeach; ?>
                                                        </div>
                                                    </div>

                                                <?php endforeach; ?>
                                            </div>
                                        </div>
                                    </div>
                                <?php endif; ?>
                            <?php endforeach; ?>
                        </div>
                    </div>
                </div>
            <?php endif; ?>
        <?php endforeach; ?>
    </div>
</main>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/html2pdf.js/0.10.1/html2pdf.bundle.min.js"></script>

<script>
function expandirTodo() {
    document.querySelectorAll('.collapse').forEach(el => {
        el.classList.add('show');
        el.style.height = 'auto';
        el.style.overflow = 'visible';
        el.style.margin = '0';
        el.style.padding = '0';
    });
}
function generarPDF() {
    expandirTodo();
    setTimeout(() => {
        const element = document.querySelector('.main-content');
        const originalStyles = {
            width: element.style.width,
            margin: element.style.margin,
            background: element.style.background
        };

        const isDarkMode = document.body.classList.contains('dark');

        element.style.width = '210mm';
        element.style.margin = '0';
        element.style.background = isDarkMode ? '#000' : '#fff';

        const allElements = element.querySelectorAll('*');
        const originalStylesMap = [];

        allElements.forEach((el, idx) => {
            const tag = el.tagName.toLowerCase();
            const computed = window.getComputedStyle(el);

            originalStylesMap[idx] = {
                background: el.style.background,
                color: el.style.color
            };

            if (isDarkMode) {
                // Si tiene fondo transparente y es contenedor → oscurecer
                const transparent = computed.backgroundColor === 'rgba(0, 0, 0, 0)' || computed.backgroundColor === 'transparent';
                const esContenedor = ['div', 'section', 'article', 'aside', 'footer', 'header', 'main', 'table', 'tbody', 'tr', 'td', 'th'].includes(tag);

                if (transparent && esContenedor) {
                    el.style.background = '#222';
                }

                // Texto siempre blanco
                el.style.color = '#fff';

            } else {
                // Restaurar automáticamente en modo claro
                el.style.background = originalStylesMap[idx].background;
                el.style.color = originalStylesMap[idx].color;
            }
        });


        const opt = {
            margin: [0, 0, 0, 0],
            filename: 'reporte_aprendiz_<?= htmlspecialchars($aprendiz['nombre'] ?? '') ?> <?= htmlspecialchars($aprendiz['apellido'] ?? '') ?>.pdf',
            image: { type: 'jpeg', quality: 1 },
            html2canvas: { 
                scale: 2,
                useCORS: true,
                scrollY: 0,
                backgroundColor: isDarkMode ? '#222' : '#fff'
            },
            jsPDF: { unit: 'mm', format: 'a4', orientation: 'portrait' },
            pagebreak: { mode: ['avoid-all', 'css', 'legacy'] }
        };

        html2pdf().set(opt).from(element).save().then(() => {
            Object.assign(element.style, originalStyles);
            allElements.forEach((el, idx) => {
                el.style.background = originalStylesMap[idx].background;
                el.style.color = originalStylesMap[idx].color;
            });
        });
    }, 500);
}

</script>
</body>
</html>