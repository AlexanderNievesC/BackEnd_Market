# README

Al consumir esta API, usted podra realizar tres acciones
1) GET productos
2) GET categories
3) SEARCH producto por nombre

1)  GET lista de products
https://api-bsale-first.herokuapp.com/products

Parámetros
id: identificador del producto
name: nombre del producto
url: link donde esta contenida la imagen
price: precio del producto
discount: descuento del prodcto
category: categoria del producto
id: identificador de la categoria del producto
name: nombre de la categoria del producto

Respuesta Ejemplo

{
"id": 5,
"name": "ENERGETICA MR BIG",
"url_image": "https://dojiw2m9tvv09.cloudfront.net/11132/product/misterbig3308256.jpg",
"price": 1490,
"discount": 20,
"category": {
"id": 1,
"name": "bebida energetica"
}
}

2)  GET lista de categories

https://api-bsale-first.herokuapp.com/categories

Parametros
id: identificador de la categoria
name: nombre de la categoria
products: detalles del producto 

Respuesta Ejemplo

"id": 1,
"name": "bebida energetica",
"products": [
{
"id": 5,
"name": "ENERGETICA MR BIG",
"url_image": "https://dojiw2m9tvv09.cloudfront.net/11132/product/misterbig3308256.jpg",
"price": 1490,
"discount": 20,
"category": {
"id": 1,
"name": "bebida energetica"
}
},
{
"id": 6,
"name": "ENERGETICA RED BULL",
"url_image": "https://dojiw2m9tvv09.cloudfront.net/11132/product/redbull8381.jpg",
"price": 1490,
"discount": 0,
"category": {
"id": 1,
"name": "bebida energetica"
}
}

3) Buscar producto por nombre
Ejemplo (Se esta buscando el producto Ron)
https://api-bsale-first.herokuapp.com/products/search?query=ron 

Parámetros
id: identificador del prodcuto
name: nombre del producto filtrado 
url: imagen del producto
price: precio del producto
discount: descuento del producto
categoria: categoria del producto
  id: identificador de la categoria
  name: nombre de la categoria

Resultados ejemplo
[
{
"id": 23,
"name": "RON BACARDI AÑEJO",
"url_image": "https://dojiw2m9tvv09.cloudfront.net/11132/product/bacardi9450.jpg",
"price": 4990,
"discount": 0,
"category": {
"id": 3,
"name": "ron"
}
},
{
"id": 24,
"name": "RON BACARDI 8 AÑOS",
"url_image": "https://dojiw2m9tvv09.cloudfront.net/11132/product/bacardianejo9463.jpg",
"price": 5990,
"discount": 0,
"category": {
"id": 3,
"name": "ron"
}
}