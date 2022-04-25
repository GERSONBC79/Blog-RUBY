# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version -> 5.1.6.2

* System dependencies ->

* sudo gem install mysql2
  sudo apt-get install mariadb-server 
  sudo apt-get install libmariadbd-dev- dependecias para poder usar mariadb como manejador de base de datos

* sudo apt-get install git
git clone https://github.com/twbs/bootstrap.git -dependecias para instalar bootstrap directamente del directorio oficial usando git

* sudo apt-get install imagemagick - Dependencia para la funcion de subida de imagenes a los comentarios

gem install bootstrap-modal-rails

* Deployment instructions

* El sistema funciona de una manera muy simple, al entar como primera opcion puedes crear un nuevo articulo dando click en el boton nuevo articulo, para despues proporcionar un el titulo de este y un texto breve, al terminar dar click en "create article"
Una vez creado, tienes la opcion de agregar un comentario a este articulo, escribiendo el nombre de la persona que realiza el comentario en la seccion llamada commenter, y el comentario en la seccion body. Una vez terminado el comentario dar click en "create comment"
Otra opcion que existe es poder regresar a la pagina principal dando clic en el boton "regresar". Aqui apareceran el lisatdo de todos los articulos creados con 3 acciones diferentes a realizar en cada uno de ellos. La primera es mostar, que nos regresara a la pagina anterior, en donde podems ver la informacion de articulo y de los comentarios creados sobre este,
La seguna opcion nos permite editar el articulo, y nos apaerecera una pagina igual a la que cuando creamos un nuevo articulo
Por último, esta la opcion de eliminar el ariticulo. Para esto nos va a pedir una confirmacion por medio de una ventana emergente. Posterior a esto nos pedira un username y un password para completar la accion, los cuales son "dhh" y "secret" respectivamente. 
