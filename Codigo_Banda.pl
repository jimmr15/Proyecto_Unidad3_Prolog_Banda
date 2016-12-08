instrumento(voz).
instrumento(g_ritmica).
instrumento(guitarra).
instrumento(bajo).
instrumento(teclado).
instrumento(bateria).
instrumento(saxofon).
instrumento(clarinete).
instrumento(armonica).
instrumento(acordeon).
instrumento(violin).
instrumento(trompeta).
instrumento(ukulele).

canciones(enanitos_verdes, mariposas).
canciones(green_day,time_of_your_life).
canciones(mago_de_oz,molinos_de_viento).
canciones(el_tri,las_piedras_rodantes).
canciones(el_recodo,pena_tras_pena).
canciones(beethoven,para_elisa).
canciones(inspector,amargo_adios).
canciones(train,hey_soul_sister).
canciones(ska_p,tio_sam).
canciones(coldplay,the_scientist).

ingles(time_of_your_life).
ingles(hey_soul_sister).
ingles(the_scientist).

español(mariposas).
español(molinos_de_viento).
español(las_piedras_rodantes).
español(pena_tras_pena).
español(amargo_adios).
español(tio_sam).
sinvoz(para_elisa).

rock(mariposas).
rock(molinos_de_viento).
rock(las_piedras_rodantes).
banda(pena_tras_pena).
clasica(para_elisa).
ska(amargo_adios).
ska(tio_sam).
pop(the_scientist).
pop(hey_soul_sister).
punk(time_of_your_life).

escancionde(X,Y) :- canciones(Y,X).
escanciondeenespañol(X,Y) :- canciones(Y,X), español(X).
escanciondeeningles(X,Y) :- canciones(Y,X), ingles(X).
escanciondeensinvoz(X,Y) :- canciones(Y,X), sinvoz(X).

escanciondeenespañolyrock(X,Y) :- canciones(Y,X), español(X),rock(X).


tiene(mariposas,voz).
tiene(mariposas,g_ritmica).
tiene(mariposas,guitarra).
tiene(mariposas,bajo).
tiene(mariposas,teclado).
tiene(mariposas,bateria).

tiene(time_of_your_life,voz).
tiene(time_of_your_life,g_ritmica).
tiene(time_of_your_life,violin).

tiene(molinos_de_viento,voz).
tiene(molinos_de_viento,g_ritmica).
tiene(molinos_de_viento,guitarra).
tiene(molinos_de_viento,bajo).
tiene(molinos_de_viento,teclado).
tiene(molinos_de_viento,bateria).
tiene(molinos_de_viento,violin).

tiene(las_piedras_rodantes,voz).
tiene(las_piedras_rodantes,g_ritmica).
tiene(las_piedras_rodantes,bajo).
tiene(las_piedras_rodantes,armonica).

tiene(pena_tras_pena,voz).
tiene(pena_tras_pena,bajo).
tiene(pena_tras_pena,bateria).
tiene(pena_tras_pena,clarinete).
tiene(pena_tras_pena,acordeon).
tiene(pena_tras_pena,trompeta).

tiene(para_elisa,teclado).

tiene(amargo_adios,voz).
tiene(amargo_adios,g_ritmica).
tiene(amargo_adios,guitarra).
tiene(amargo_adios,bajo).
tiene(amargo_adios,teclado).
tiene(amargo_adios,bateria).
tiene(amargo_adios,saxofon).

tiene(hey_soul_sister,voz).
tiene(hey_soul_sister,g_ritmica).
tiene(hey_soul_sister,bateria).
tiene(hey_soul_sister,ukulele).

tiene(tio_sam,voz).
tiene(tio_sam,g_ritmica).
tiene(tio_sam,guitarra).
tiene(tio_sam,bajo).
tiene(tio_sam,teclado).
tiene(tio_sam,bateria).
tiene(tio_sam,trompeta).

tiene(the_scientist,voz).
tiene(the_scientist,g_ritmica).
tiene(the_scientist,bajo).
tiene(the_scientist,teclado).
tiene(the_scientist,bateria).

lleva(X,Y) :- tiene(X,Y).



queinstrumento(mariposas,instrumento(voz,g_ritmica,guitarra,bajo,teclado,bateria)).
queinstrumento(time_of_your_life,instrumentos(voz,g_ritmica,violin)).
queinstrumento(molinos_de_viento,instrumentos(voz,g_ritmica,guitarra,bajo,teclado,bateria,violin)).
queinstrumento(las_piedras_rodantes,instrumentos(voz,g_ritmica,bajo,armonica)).
queinstrumento(pena_tras_pena,instrumentos(voz,bajo,bateria,clarinete,acordeon,trompeta)).
queinstrumento(para_elisa,instrumentos(teclado)).
queinstrumento(amargo_adios,instrumentos(voz,g_ritmica,guitarra,bajo,teclado,bateria,saxofon)).

queinstrumento(hey_soul_sister,instrumentos(voz,g_ritmica,bateria,ukulele)).
queinstrumento(tio_sam,instrumentos(voz,g_ritmica,guitarra,bajo,teclado,bateria,trompeta)).
queinstrumento(the_scientist,instrumentos(voz,g_ritmica,bajo,teclado,bateria)).



