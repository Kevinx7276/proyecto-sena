IMPORTANTE PARA LA IMPORTACION DE ARCHIVOS DE EXCEL EN EL PROYECTO

Antes de iniciar xampp/wampp se deben tener en cuenta los siguientes aspectos

Version PHP 8.0+ 
y en la configuracion de xampp/wampp debe entrar en la configuracion de apache en php.ini y debe buscar los siguientes servicios 
con CTROL + B para poder ejecutar exitosamente el PROYECTO:

;extension=zip
;extension=openssl
;extension=gd
;extension=mbstring

debe quitar el simbolo ";" para activar el servicio

si no sale con el ";" es que ya esta activado el servicio (Puede comprobarlo haciendo CTROL + B y buscando los servicios sin el simbolo ";")

credenciales administrador:

usuario: admin@correo.com
contraseña: 123456789