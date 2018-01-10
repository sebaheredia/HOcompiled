1. Escriban qué esperan de cada uno de los pasos
En el primer paso (Pre-procesador) se incluyen las librerias con la nomenclatura de las funciones.
En el segundo paso se traduce el codigo c (ya analizado) a assembler.
En el tercer paso se escribe el codigo assembler a binario (este ya es un ejecutable).
En el ultimo paso se crea el ejecutable uniendo los distintos objetos
2. ¿Qué agregó el preprocesador?
El preprocesador agrego las librerías especificadas en los include.
3. Identificar en la rutina de assembler las funciones
En el caso particular del archivo calculator, se pueden ver 3 funciones básicas: main, add_numbers y printf,  pero a printf la saca de una librería. Quedan main y add_numbers definidas en assembler.
4. Explicar qué quieren decir los símbolos que se crean en el objeto
Para ver los simbolos que se crean en el objeto, se coloca:
nm calculator.o

000000000000003c T add_numbers

0000000000000000 T main

               	 U printf

La primer columna es la posición en la memoria, la segunda es el descriptor y la ultima es la entrada
5. ¿En qué se diferencian los símbolos del objeto y del ejecutable?
El archivo del objeto se genera para cada archivo fuente. Este contiene los símbolos que se han definido interna o externamente. También mantiene una tabla de símbolos para el mecanismo de enlace. Ahora bien en el archivo ejecutable se resuelven los conflictos de símbolos distribuidos por diferentes archivos objetos o bibliotecas y se establece una vinculación entre los distintos objetos.
