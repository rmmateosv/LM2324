(:Mostrar el nodo raíz
/bookstore:)

(:Mostrar los elemento títulos de los libros:)
(:/bookstore/book/title:)
(://title:)

(:Títulos de los libros:)
(://title/text():)

(:Isbn de los libros:)
(://title/@isbn/string():)

(:Mostrar el idioma y el isbn:)
(://@lang|//@isbn|//title:)

(:Todos los atributos:)
(://@*:)

(:Todos los elementos:)
(://*:)

(:Títulos de los libros cuyo precio es mayor de 35:)
(://book[price>35]/title:)

(:Devuelve los <title> que tengan definido el atributo lang y que valga ‘en’:)
(://title[@lang="en"]:)

(:Devuelve el primer elemento <book> que se encuentre dentro de un <bookstore>:)
(:/bookstore/book[1]:)

(:Devuelve el último elemento <book> que se encuentre dentro de un <bookstore>:)
(:/bookstore/book[last()]:)

(:Devuelve el penúltimo elemento <book> que se encuentre dentro de un <bookstore>:)
(:/bookstore/book[last()-1]:)

(:Devuelve los elementos <book> que se encuentren dentro de un <bookstore> y que sean el primero o
el segundo:)
(:/bookstore/book[position()=1 or position()=2]:)

(:Devuelve los elementos <title> que tengan definido el atributo lang:)
(://title[@lang]:)

(:Devuelve los elementos <title> que no tengan definido el atributo lang:)
(://title[not(@lang)]:)

(:Devuelve los elementos <book> que tengan un elemento hijo <price>:)
(://book[price]:)
(:Devuelve los elementos <book> que NO tengan un elemento hijo <price>:)
(://book[not(price)]:)

(:Devuelve los elementos <title> que se encuentren dentro de elementos <book> que contengan un
elemento <price> con valor superior a 35:)
(://book[price>35]/title:)

(:Devuelve los elementos <title> que tengan el texto de ‘Harry Potter’:)
(://title[.="Harry Potter"]:)
(://title[text()="Harry Potter"]:)

(:EJES:)
(://book[price=29.99]/ancestor::*:)
(://book[price=29.99]/title/following::*:)
(://book[price=29.99]/title/following-sibling::*:)

(:FUNCIONES:)
(:last->Mostrar el último libro:)
(://book[last()]:)
(:last->Mostrar el título del último libro:)
(://book[last()]/title:)
(:Position->Libro que ocupa la 3 posición:)
(://book[position()=3]:)
(:count->Contar cuántos nodos title hay:)
(:count(//title):)
(:count->Contar cuántos libros cuestan menos de 20:)
(:count(//book[price<20]):)
(:count(//price[.<20]):)

(:SUM->SUMAR LOS PRECIOS DE LOS LIBROS:)
(:sum(//book/price):)