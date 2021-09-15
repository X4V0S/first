#!/usr/bin/env bash

actualDir() {
  find . -maxdepth 1 -type d
}

crearDir() {
  read -p "Ingresa el nombre del directorio que quieres crear: " nameDir
  mkdir -p ./"$nameDir"
  echo -e "Directorio $nameDir creado con exito.\n"
}

eliminarDir() {
  read -p "Ingresa el nombre del directorio que quieres eliminar: " delDir
  rm -r "$delDir"
  echo -e "Directorio $delDir eliminado con exito.\n"
}

cambiarPath() {
  echo "Tu ruta actual es:"
  pwd
  echo -e "\n Ingresa la ruta a la que quieres cambiar.\n Solo puedes subir con '..' y bajar de directorio (solo 1 a la vez). No uses '/': "
  read -r pathDir
  cd "$pathDir"
  echo "Tu nueva ruta es:"
  pwd
}


while [ "$hostOP" != 5 ]
echo -e "\n Que deseas hacer?:\n [1] Crear directorio.\n [2] Eliminar directorio.\n [3] Cambiar de ruta.\n [4] Mostrar directorios de la ruta actual.\n [5] Salir.\n "
read -r hostOP

do
  if [ "$hostOP" = 1 ];
  then
  crearDir
  fi


  if [ "$hostOP" = 2 ];
  then
  eliminarDir
  fi


  if [ "$hostOP" = 3 ];
  then
  cambiarPath
  fi
  

  if [ "$hostOP" = 4 ];
  then
  actualDir
  fi


  if [ "$hostOP" = 5 ];
  then
  break
  fi
done
