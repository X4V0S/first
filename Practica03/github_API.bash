#!/usr/bin/env bash

user="codingforentrepreneurs" #usuario a investigar

echo -e "\n Esta es la informacion del usuario: $user\n"
curl "https://api.github.com/users/$user"
sleep 15s


echo -e "\n Estos son los repositorios del usuario: $user\n"
curl "https://api.github.com/users/$user/repos?per_page=3&page=1"
sleep 30s


repo="30-Days-of-Python" #repo a investigar issues
echo -e "\n Estos son los problemas del repositorio: $repo\n"
curl "https://api.github.com/repos/$user/$repo/issues"
sleep 1m


repo="30-Days-of-Python" #repo a investigar contributors
echo -e "\n Estos son los contribuidores del repositorio: $repo\n"
curl "https://api.github.com/repos/$user/$repo/contributors"
sleep 30s


repo="30-Days-of-JavaScript" #repo a investigar contributors
echo -e "\n Estos son los contribuidores del repositorio: $repo\n"
curl "https://api.github.com/repos/$user/$repo/contributors"
sleep 5s