#!/usr/bin/env bash

#Codificar el archivo "hola_mundo.c"
cat hola_mundo.c | base64 > hola_mundo_encoded.txt


#Decodificando el archivo "hola_mundo.c"
#cat hola_mundo.c | base64 | base64 -d > hola_mundo_decoded.c


#Decodificando "mystery_img1.txt" a imagen con extension .jpg
base64 -d mystery_img1.txt > mystery_img1_decoded.jpg


#Decodificando "mystery_img2.txt" a imagen con extension .jpg
base64 -d mystery_img2.txt > mystery_img2_decoded.jpg
