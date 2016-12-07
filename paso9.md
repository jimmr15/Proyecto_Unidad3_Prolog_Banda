#Resultados#

Los resultados fueron los esperados con el programa cumple todas las reglas tomando en cuenta los hechos.

**La primera regla dice:**	 
	
	escancionde(X,Y) :- canciones(Y,X).
Lo que hace la pregunta. ¿Mariposas es canción de enanitos verdes? Dando como resultado un “true” y preguntamos ¿mariposas es canción de mago de oz? Lo que nos devuelve un “false” (Imagen1.1).
![Imagen1.1](https://scontent.felp1-1.fna.fbcdn.net/v/t1.0-9/15267502_1149575928425559_8455055934088015079_n.jpg?oh=5c000da513cadd30dc24b123ccbfc138&oe=58FBC7B2)
*Imagen 1.1 Regla cumplida del programa.*


**La segunda regla nos dice:**	 
  
	
	escanciondeenespañol(X,Y) :- canciones(Y,X), español(X). 
Lo que hace la pregunta ¿la canción mariposas es de enanitos verdes y está en español? Dando como resultado un “true” y preguntamos ¿la canción Hey soul sister es del grupo Train y está en español? Dando como resultado un “false” ya que “Hey soul sister” si es canción de “Train” pero no está en español (Imagen1.2)
![Imagen1.2](https://scontent.felp1-1.fna.fbcdn.net/v/t1.0-9/15380320_1149577108425441_7716790207443244999_n.jpg?oh=6830ccaa0de01d793fd66e862396890c&oe=58F757A7)
*Imagen 1.2 Segunda regla cumplida*

**La tercera regla nos dice:**


	escanciondeeningles(X,Y) :- canciones(Y,X), ingles(X).
Lo que hace la pregunta ¿la canción mariposas es de enanitos verdes y está en inglés? Dando como resultado un “false” y preguntamos ¿la canción Hey soul sister es del grupo Train y está en inglés? Dando como resultado un “true” ya que “Hey soul sister” si es canción de “Train” y está en español (Imagen1.3)
![Imagen1.3](https://scontent.felp1-1.fna.fbcdn.net/v/t1.0-9/15390787_1149578258425326_3473322025337168755_n.jpg?oh=cbc4928cdddb62e5fe0ed5e46f646f5c&oe=58BC95C5)
*Imagen 1.3 Tercera regla cumplida.*

**La cuarta regla nos dice:**


	escanciondeensinvoz(X,Y) :- canciones(Y,X), sinvoz(X).
Lo que hace la pregunta ¿la canción mariposas es de enanitos verdes y tiene voz? Dando como resultado un “false” y preguntamos ¿la canción Para elisa es de Beethoven y no tiene voz? Dando como resultado un “true” ya que “Para elisa” si es canción de “Beethoven” y no tiene voz (Imagen1.4).
![Imagen1.4](https://scontent.felp1-1.fna.fbcdn.net/v/t1.0-9/15326338_1149580505091768_4386072172849898620_n.jpg?oh=186456eebaffb53a941e2bd99fb274ea&oe=58B47C2D)
*Imagen 1.4 Cuarta regla cumplida.*

**La Quinta regla nos dice:**


	escanciondeenespañolyrock(X,Y) :- canciones(Y,X), español(X),rock(X).
Lo que hace la pregunta ¿la canción mariposas es de enanitos verdes y está en español y es rock? Dando como resultado un “true” y preguntamos ¿la canción pena tras pena es del grupo El recodo, está en español y es rock? Dando como resultado un “false” ya que “Pena tras pena” si es canción de “El recodo” pero no es rock (Imagen1.5).
![Imagen1.5](https://scontent.felp1-1.fna.fbcdn.net/v/t1.0-9/15337422_1149583768424775_1245700500768861976_n.jpg?oh=8c5326d263d3c16d06b3c0cabaa5d7ed&oe=58B17FE7)
*Imagen 1.5 La quinta regla cumplida.*

**La sexta regla nos dice:**


	lleva(X,Y) :- tiene(X,Y).
Lo que hace la pregunta ¿la canción mariposas tiene voz? Puede usarse con cualquier instrumento de la lista dando como resultado un “true” y preguntamos ¿la canción pena tras pena tiene saxofón? Dando como resultado un “false” ya que “Pena tras pena” no tiene saxofón (Imagen1.6). 
![Imagen1.6](https://scontent.felp1-1.fna.fbcdn.net/v/t1.0-9/15380359_1149588501757635_5235186205725553457_n.jpg?oh=a022c48d05378183284258c8929d7ee5&oe=58C2EB47)
*Imagen 1.6 Sexta regla cumplida.*