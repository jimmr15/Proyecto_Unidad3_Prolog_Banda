
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
