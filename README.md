# AUTOMATIZACIÓN
---
## REQUERIMIENTOS

[![ruby Version](https://img.shields.io/badge/Ruby-Download-brown)](https://rubyinstaller.org/downloads/)

[![Visual-Code Version](https://img.shields.io/badge/Visual-Code-blue)](https://code.visualstudio.com/)

[![Chrome-Driver Version](https://img.shields.io/badge/Chrome-Driver-green)](https://chromedriver.chromium.org/downloads)

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
