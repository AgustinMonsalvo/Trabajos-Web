
# Enterga 2
En donde dice 'correo electronico' ingresar: webadmin , en donde dice 'contraseña' ingresar: admin y en donde dice ' ingrese su rol' ingresar: Administrador ,para poder loguearse correctamente.

## Integrantes 
Agustin monsalvo-Julian Conti

# Entrega 3

- Para obtener la lista entera de entidades de la tabla escribir en la url: listar.
- Para ordenar de manera descendente el modelo de auto mas nuevo al mas antiguo escribir en la url: listar?desc=modelo.
- Para obtener un auto en particular escribir en la url: listar/id
- Para editar un auto en particular escribir en la url: listar/id y en el body:
 {
  "color": "Rojo",
  "Modelo": "2018-03-01",
  "Kilometros": 15000,
  "Asientos": 5,
  "Informacion": "MUY BUEN AUTO",
  "id_marca": 3
}
- Para insertar un auto escribir en la url: listar y en el body:
 {
  "color": "Rojo",
  "Modelo": "2018-03-01",
  "Kilometros": 15000,
  "Asientos": 5,
  "Informacion": "MUY BUEN AUTO",
  "id_marca": 3
}
  - Para poder seleccionar cuantos autos te aparecen por pagina escribir en la url: paginar?page=1&limit=10.
  - Para poder crear una columna escribir en la url: crear-columna.
  - Para poder editar el valor de la columna creada escribir en la url: autos/id/oferta y en el body:
   {
  "oferta": 1
 }
  - En la tabla oferta 1 significa que el auto esta en oferta y 0 significa que no.


