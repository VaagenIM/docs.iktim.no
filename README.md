# Fagbok for IKT IM
Kilde for innholdet til https://docs.iktim.no.<br>
Foreløpig er README.md rotete og fyllt av informasjon. Dette skal ryddes og gjøres finere senere.
<br>

## Lyst å bidra?
Last ned GitHub repo'et via https://desktop.github.com/ (Via programmet, ikke nettsiden)<br>
Bruk en markdown editor, for eksempel https://obsidian.md/<br>
Alternativt kan du og sette opp Obsidian til å bruke Git ved å følge denne oppskriften: https://github.com/denolehov/obsidian-git<br>
<br>
Åpne Vaultet `docs` i Obsidian, endringer du gjør i Obsidian vil automatisk havne i GitHub Desktop.<br>
For å sende inn dine forslag, trykker du "Commit" inne i GitHub Desktop.

## Lenker mellom sider
For å opprette lenker mellom dokumenter, brukes `[[Wikilinks]]` funksjonen. Skriv navnet på filen du skal linke til (`[[MinFil]]`), så ordner Obsidian resten. For å endre navn bruker du `[[MinFil|Lenketekst]]`. Det er ikke mulig å ha filer med samme navn, unntak av index.md filer (Disse skal ikke lenkes til).<br>
<br>
Filer sorteres etter rekkefølge, benytt tall foran tittel (01 Første artikkel, 02 En annen artikkel). Navnet defineres av # Tittelen, eller en `title:` tag.<br>
Filer kan starte slik, `01 Min side`:
```
---
title: Min side
---
# Overskrift
Eksempel
```
Vil vises som "Min side" i menyen
<br>

## Bilder og video
Bilder kan limes inn fra utklippstavle direkte i et dokument, disse skal legges inn i en _attachments mappe i samme lokasjon som filen du arbeider med.<br>
Her bør du laste ned en Obsidian plug-in: [Clear Unused Images](https://github.com/ozntel/oz-clear-unused-images-obsidian).<br>

**For å automatisk legge bildene inn i en _attachments mappe må du endre instillinger i "Files and Links" panelet:**
- Default location for new attachments: "`In subfolder under current folder`"
- Subfolder name: "`_attachments`"

En mer ryddig forklaring på hvordan du kan bidra kommer senere.
<br><br>
Prosjektet støtter og innbygging av YouTube videoer, ved å bruke "Del YouTube" funksjonen på nettsiden til YouTube, og velge `Bygg inn`. HTML koden kan limes direkte inn i dokumentet.

## Sett opp et dev-miljø 
For å sette opp et dev-miljø gjør du:
```
git clone https://github.com/VaagenIM/docs.iktim.no
cd docs.iktim.no
pip install -r requirements.txt
mkdocs serve
```
Så kan du besøke http://localhost:8000 for å se endringene i sanntid!<br>
`mkdocs build` bygger ut sidene i en `/site` mappe som serveres av en webserver.
<br>

## Hostes via Docker
Nettsiden holdes oppe av Docker. Se `Dockerfile` for å se hva containeren gjør :)
<br><br>
`docker-compose.yml`:
```
version: "3.3"
services:
  docs:
    build:
      context: https://raw.githubusercontent.com/VaagenIM/docs.iktim.no/main/Dockerfile
      args:
        - REPO_URL=https://github.com/VaagenIM/docs.iktim.no
    restart: unless-stopped
    ports:
      - "3000:80"
```
Startes med: `docker-compose up --build -d`. Nettsiden vil automatisk hente oppdateringer hver 2. time.
