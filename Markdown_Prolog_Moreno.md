
# Índice #
- Introducción
- Problemática
- Justificación
- Desarrollo
- Resultados
- Conclusión
- Referencia

##
#Introducción#


__¿Que es la programación lógica?.__

La programación lógica es aquel tipo de programación que permite al software “razonar”, esto es, hacer razonamientos, por ejemplo, de tipo deductivo o inductivo.
Dada una base de datos consistente en un conjunto de entidades, propiedades de esas entidades y relaciones de unas entidades con otras, el sistema es capaz de hacer razonamientos. Básicamente, este proceso se expresa de la siguiente forma:

__Resultados = reglas + hechos.__

Donde entendemos que “hechos” es el conjunto de datos que conoce el sistema a priori(o que va adquiriendo a lo largo de su ejecución) y “reglas” son un conjunto de operaciones que se pueden aplicar a dichos datos para sacar un resultado lógico.

Algunos campos donde este tipo de lenguajes es aplicado son en la implementación de Sistemas Expertos (programas que generan una respuesta o una recomendación sobre el tema para el que están implementados) o para la Generación de nuevos teoremas (dadas una serie de reglas, generan teoremas).

__¿Para que nos sirve la programación Lógica?__

Nos sirve para que el software se adapte a una problemática de nuestra vida diaria y hacernos la vida más fácil, con la programación lógica hacernos que el software se adapte a una situación a la que aún no tenga solución o sea una nueva solución ahorrando problemas pasados.
##
#Problemática#
Como una persona con gustos musicales variados tengo la problemática que al querer tocar una canción con todos los instrumentos es complicado saber qué instrumentos se están tocando en la canción, un ejemplo de este tipo de aplicación seria la aplicación “shazam” que puede identificar música pregrabada desde cualquier lugar si proviene de alguna fuente, suene en la radio, en la televisión, en el cine o en un club, que proviene de un fondo musical no muy elevado que permita reconocer la huella acústica, si la canción se encuentra en el software de la base de datos del sistema.
En este caso sería un ejemplo muy parecido pero este reconocería que instrumento se está tocando en la canción buscada.
Al realizar el proyecto me pude dar cuentas que no solo podría detectar que instrumentos lleva, sino que también en un futuro podría mostrarte la tablatura del instrumento para poderla tocar al instante de buscarla.

![Rock](http://revistafeel.com.mx/cms/wp-content/uploads/2016/10/IMG_0047.png)


##
#Justificación#
Como músico no profesional si es un problema en ocasiones saber si un instrumento está sonando en ese momento, al no contar con un oído musical muy desarrollado puedo identificarlo hasta que estoy tocando los acordes en la guitarra rítmica que es el instrumento que yo utilizo, por eso este programa funcionaria a los músicos que están empezando en la música y reconozcan si el instrumento con el que cuenta se está utilizando en la canción y en un futuro pudiera dar como resultado la tabla tura de dicho instrumento en la canción que buscamos.

![Musica](https://www.muralesyvinilos.com/murales/band-musicians-4.jpg)
##
#Desarrollo#
El siguiente código nos muestra cómo se desarrolló la aplicación en prolog en el programa SWI-Prolog.

Este código nos muestra los instrumentos disponibles que podemos encontrar en la aplicación, podemos revisarlos si en la aplicación usamos “instrumento (_)”, con eso le estaremos haciendo la pregunta de ¿tienes instrumentos?, también podemos preguntarle ¿qué instrumentos tienes?  Y con “instrumento(X)” podremos revisar todos los instrumentos que lleva saltando cada uno con “;”.
canciones(enanitos_verdes, mariposas).

	
	instrumento(voz).
	instrumento(g_ritmica).
	instrumento(guitarra).
	instrumento(bajo).


###Hechos
Esta parte del código nos muestra los hechos que en este caso son las canciones y grupos que tiene disponibles en este momento, escogí grupos que fueran de diferente género y que en las canciones tuvieran variedad en los instrumento para tener un buen resultado a la hora de probarla, en esta sección podemos hacerle la pregunta, ¿tienes alguna canción de X grupo? “canciones(_,_)” y podemos preguntarle también ¿qué canción tienes de x grupo? “canciones(x,_)” y para ser más específico podemos decirle que nos muestre la canción del grupo que encontremos por ejemplos, ¿tienes canciones de Green day? “canciones(green_day,_)”, ¿Qué canción es? “canciones(Green_day,X)” dando como result ado “X = time_of_your_life”.

	canciones(green_day,time_of_your_life).
	canciones(mago_de_oz,molinos_de_viento).
	canciones(beethoven,para_elisa).
	canciones(train,hey_soul_sister).

##

En esta parte del código también podremos seleccionar el idioma de la canción para tener un análisis más detallado y no se confunda a la hora de buscarla.

	ingles(time_of_your_life).

	español(mariposas).

	sinvoz(para_elisa).



Se podrá elegir el género de la canción para que se tenga una idea del tipo de instrumento tocado  en ese género, o si requiere de alguna distorsión o efecto.

	rock(mariposas).
	clasica(para_elisa).
	punk(time_of_your_life).

Ya conociendo las canciones con las que cuenta ahora en esta parte del código nos muestra los instrumentos que toca cada canción.

	tiene(mariposas,voz).

	tiene(time_of_your_life,voz).

	tiene(molinos_de_viento,voz).

	tiene(para_elisa,teclado).


En esta sección podemos ver que esta la canción con todos los instrumentos, esto es para preguntarle en mayor escala, ¿qué instrumentos toca X canción?, siendo más específico, que instrumentos toca mariposas. “queinstrumento(mariposas,X).”

	queinstrumento(mariposas,instrumentos(voz,g_ritmica,guitarra,bajo,teclado,bateria)).

	queinstrumento(time_of_your_life,instrumentos(voz,g_ritmica,violin)).

	queinstrumento(molinos_de_viento,instrumentos(voz,g_ritmica,guitarra,bajo,teclado,bateria,violin)).



#Reglas#
Ahora vamos con las reglas, esto es para que nos cumpla ciertas condiciones a la hora de pedirle un dato, con todo lo que le hemos definido al programa podemos hacer las siguientes reglas por ejemplo si queremos saber si una canción es de cierto grupo podemos preguntarle ¿X canción es de X grupo? Mas especifico seria ¿mariposas es canción de enanitos verdes? “escancionde(mariposas,enanitos_verdes)”, lo que  hace que se cumpla la siguiente regla.

	escancionde(X,Y) :- canciones(Y,X).

Esta regla es parecida pero se le agrega una nueva condición, esta vez le preguntaremos ¿la canción mariposas es de enanitos verdes y está en español?, “escanciondeenespañol(mariposas,enanitos_verdes)”, lo que hace que se cumpla la regla.

	escanciondeenespañol(X,Y) :- canciones(Y,X), español(X).

La siguiente regla implica la misma pregunta pero esta vez le preguntaremos por el idioma inglés.

	escanciondeeningles(X,Y) :- canciones(Y,X), ingles(X).

Esta vez se repite la pregunta pero ahora con la canción clásica le preguntamos si la canción no tiene idioma.

	escanciondeensinvoz(X,Y) :- canciones(Y,X), sinvoz(X).

Ahora le agregamos otra condición, ahora le preguntaremos que si la canción esta rock.
Más específicamente preguntaremos ¿la canción mariposas es de enanitos verdes, está en español y es rock? “escanciondeenespañolyrock(mariposas,enanitos_verdes)” y de esta manera se cumpla la regla.

	escanciondeenespañolyrock(X,Y) :- canciones(Y,X), español(X),rock(X).

Esta última condición pregunta, ¿X canción tiene X instrumento? Lo que más específico seria ¿la canción mariposas tiene voz? “tiene(mariposas,voz)”, y asi podemos revisar si cuenta con ese instrumento.

	lleva(X,Y) :- tiene(X,Y).

##
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
 





##

#Conclusión#
La programación lógica tiene su grado de complejidad ya que se tiene que cambiar la forma de pensar, tu razonamiento ya que estas tratando de explicar cómo quieres que se hagan las cosas a una inteligencia sin ninguna capacidad de razonar o de sentido común, la maquina solo cumple lo que le dices, así que tienes que recrearlo del punto de vista calculador tomando en cuenta la mayor parte de hechos y no dejar nada a la suerte, la maquina solo ejecutara el razonamiento que le dimos y si este no es correcto la maquina no responderá de una forma intuitiva a su cometido por lo que PROLOG nos muestra la capacidad del razonamiento frio para el cometido deseado.
##








#Referencias#

1- <https://www.youtube.com/watch?v=KMgwGFyxfj4&t=355s>

2- <https://www.youtube.com/watch?v=f9u2EpOoyrQ>

3- <http://es.slideshare.net/JanselNut/prolog-ejercicios-resueltos>

##
