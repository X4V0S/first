#!/usr/bin/env python3

import requests
from bs4 import BeautifulSoup


def get_soup(url: str) -> BeautifulSoup:
    response = requests.get(url)
    return BeautifulSoup(response.content, "html.parser")

def lastfm_recentTracks():
    usuario = "miamigoinvitado"
    #usuario = input("\nIngrese el nombre de usuario de last.fm: ")
    soup = get_soup(f"https://www.last.fm/user/{usuario}")
    filas = soup.find_all("table")[0].find_all("tr")
    resultado = open(f"recentTracks_{usuario}.txt", "w", encoding="UTF-8")
    for fila in filas:
        columnas = fila.find_all("td", limit=5)
        t = [elemento.text.strip() for elemento in columnas]
        #print(f"{t}")
        resultado.write(f"{t}\n")
    resultado.close()
    print(f'Reporte "recentTracks_{usuario}.txt" creado con exito.')


if __name__ == "__main__":
    lastfm_recentTracks()
