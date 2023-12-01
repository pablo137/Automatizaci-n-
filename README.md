# AUTOMATIZACIÓN
---
## REQUERIMIENTOS

[![ruby Version](https://img.shields.io/badge/Ruby-Download-brown)](https://rubyinstaller.org/downloads/)

[![Visual-Code Version](https://img.shields.io/badge/Visual-Code-blue)](https://code.visualstudio.com/)

[![Chrome-Driver Version](https://img.shields.io/badge/Chrome-Driver-green)](https://chromedriver.chromium.org/downloads)

## Crear proyecto

<span style="color:chartreuse">Escojer una carpeta proyecto</span>

<span style="color:chartreuse">Apretar [Shift + click derecho] en la carpeta vacia</span>

<span style="color:chartreuse">Aparecera la opcion "Abrir la ventana de power Shell aqui" ingresar</span>

<span style="color:chartreuse">Aparecera una ventana de comando en la direccion actual de la carpeta del proyecto</span>

<span style="color:chartreuse">Poner el siguiente comando "git clone https://github.com/pablo137/Automatizaci-n- ." [copiar todo lo que esta entre comillas incluido el "."]</span>

<span style="color:chartreuse">Ahora poner el siguiente comando "CODE ." [Esto abrira el entorno de Visual Code]</span>

<span style="color:chartreuse">Dentro de Visual Code apreta "ctrl + ñ" [aparecera la terminal]</span>

<span style="color:chartreuse">En esta terminal se agregaran los comandos que a continuacion se mencionaran</span>

---
## INSTALAR LAS SIGUIENTES GEMAS

```bash
gem install cucumber
gem install capybara
gem install selenium-webdriver
gem install selenium
gem install rspec
gem install capybara-screenshot
```
---
## EJECUTAR PRUEBAS AUTOMATIZADAS

## EJECUTAR TODAS PRUEBAS AUTOMATIZADAS
<span style="color:chartreuse">->cucumber features</span>


## EJECUTAR EL SMOKE TEST
<span style="color:chartreuse">->cucumber features/sign-on.feature features/register.feature features/flights.feature</span>


## EJECUTAR PRUEBAS AUTOMATIZADAS DE LOS BUGS
<span style="color:chartreuse">->cucumber features -t '@bug'</span>

---
## EJECUTAR REPORTES DE LAS PRUEBAS AUTOMATIZADAS

## EJECUTAR REPORTES DE TODAS PRUEBAS AUTOMATIZADAS

<span style="color:chartreuse">->cucumber features -f html -o reports\main-report.html</span>


## EJECUTAR REPORTES DEL SMOKE TEST
<span style="color:chartreuse">->cucumber features/sign-on.feature features/register.feature features/flights.feature -f html -o reports\smoke-report.html</span>


## EJECUTAR REPORTES DE LOS BUGS
<span style="color:chartreuse">->cucumber features -t '@bug' -f html -o reports\bugs.html</span>
</span>
