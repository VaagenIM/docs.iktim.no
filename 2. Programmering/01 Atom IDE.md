---
title: Atom IDE
author: Sondre Grønås
created: 26 March 2022
tags: 
---
# Atom IDE
Atom IDE er GitHub sin egen kode-editor, også kalt en [[IDE]] (Integrated development environment). Denne kan lastes ned på [atom.io](https://atom.io/)
<br>

## Installer Packages
I Atom så er det god fordel å installere noen packages ([[Plug-in|plug-ins]]) før man setter igang å kode. 

For å installere packages går man til `File -> Settings -> Install`, eventuelt `CTRL+,` -> `Install`.

!!! note "Installer packages via terminalen"
	Alternativt så kan packages installeres i terminalen. Syntaks `apm install <packages>`

## Anbefalter packages
### `platformio-ide-terminal` (Terminal)
Med `platformio-ide-terminal` kan man åpne et konsollvindu for vårt prosjekt inne i Atom, uten å måtte lete frem til mappen i vår egen terminal. Standard snarvei er `ALT+SHIFT+T`.

### `atom-live-server` (Live-Webutvikling)
Denne åpner vårt prosjekt i en nettleser, som oppdateres automagisk hver gang vi lagrer dokumentet. Et must for når en jobber med blant annet [[HTML]]. Snarvei for å starte er `CTRL+ALT+L` / `CMD+ALT-L`