---
title: Mappestruktur
aliases: 
  - Mappestruktur
lang: nb-NO
authors:
  - Sondre Grønås
tags:
  - System
created: 2023-05-03 10:56:46
updated: 2023-05-09 09:25:41
---
# Mappestruktur
Mappestruktur hjelper med å organisere og strukturere data på en logisk måte som gjør det lettere å finne og administrere filer. En god mappestruktur kan også hjelpe til med å unngå duplisering av data og redusere rot.

## Prosjektmapper
Når man jobber i programfag som informasjonsteknologi og medieproduksjon, er mappestruktur ekstra viktig - spesielt i yrkeslivet.

Regelen er å gjøre det så enkelt som mulig for utenforstående personer å kunne ta opp et prosjekt og kunne finne frem til nødvendige filer. Mappestruktur er sjeldent nødvendig mens man jobber med et prosjekt man selv har laget, men etter noen uker vil det bli vanskelig å orientere seg i prosjektet igjen uten. Ikke legg alt i samme mappe, lag undermapper!

> [!HINT]+ Eksempel skole
> ```
> Skole 2023
> ├── Engelsk
> ├── Matte
> ├── Naturfag
> ├── Programmering
> │ ├── Python
> │ ├── JavaScript
> ├── Mediefag
> │ ├── Bilde
> │ ├── Video
> │ ├── Lyd
> └── ...
> ```

> [!VIDEO]+ Eksempel film
> Merk at dette er ikke nødvendigvis er riktig for alle typer prosjekt.
> ```
> Filmprosjekt 2023
> ├── Råmateriale
> │ ├── 2023-05-09 INT Scene 1
> │ ├──── Lyd
> │ ├──── Kam A Sony A6500
> │ ├──── Kam B Sony A6300
> │ ├──── Kam C Canon 860D
> │ ├── 2023-05-10 EXT Scene 2
> │ ├── ...
> ├── Eksport
> │ ├── Web
> │ ├── TV
> │ ├── Arkiv
> │ ├── ...
> ├── Promomateriale
> │ ├── Instagram
> │ ├── Video
> │ ├── ...
> ├── Manus
> └── ...
> ```

Når man jobber med programmering er man ofte tvunget til å bruke god mappestruktur, særlig om man bruker versjoneringstjenester som [[GitHub]].

## Navnekonvensjoner
Filnavn spiller en viktig rolle, og blir ofte undervurdert. Filnavn bør inneholde viktig informasjon hvor det er mulig, som for eksempel dato, navn på den som eier [[Åndsverkloven|åndsverket]], versjon og prosjekt. Det finnes en del lure konvensjoner å følge, ingen regler.

De fleste filutforskere sorterer alfabetisk, som kan by på en rekke utfordringer. Heldigvis er ikke løsningen den vanskeligste. For dato er det vanlig å skrive `YYYY-MM-DD`, ettersom dette gir best alfabetisk sortering. Dersom man har filer som begynner på tall, kan det hende at en må sørge for å ha likt antall tall i rekken for å gi riktig sortering; `1 Filnavn` -> `0001 Filnavn`.

Ulike versjoner eller iterasjoner bør også bli navngitt på en måte som er lett å forstå. `Ferdig ny`, `Ferdig ny (1)`, `Ferdig ny final` er verre enn `Ferdig v1`, `Ferdig v2`.

Her er noen eksempler til navnekonvensjoner:
- `MASTER_LYD_51SURROUND_MinFilm_2023_MittNavn.wav`
- `WEB_LYD_STEREO_MinFilm_2023_MittNavn.mp3`
- `YOUTUBE_1080p50_50mbps_H264_MinFilm_2023_MittNavn.mov`
- `MASTER_2160p50_ProResHQ_MinFilm_2023_MittNavn.mov`
- `2023-05-09_NorskEksamen_Overskrift_MittNavn.docx`

Merk at det ikke brukes mellomrom i navnene. Dette er ikke alltid nødvendig, men enkelte systemer kan ha problemer med å tolke mellomrom i filnavn, dog er dette sjeldent et problem.

## Metadata
I tillegg til mappestruktur kan man også endre metadata til filer, noe som er en tidkrevende prosess og må settes i perspektiv til prosjektets omfang.

Hvis man er fotograf, så kan man i ettertid gå gjennom bildene i programvare som [[Adobe Bridge]], og gi dem en rating fra 0-5, flagge dem i ulike farger (<mark style="background: #FF5582A6;">Rød = kast</mark>, <mark style="background: #BBFABBA6;">grønn = bra</mark>), eller legge inn tekstbeskrivelse og tagger. Noen programmer lar deg bruke kunstig intelligens og maskinlæring som ansiktsgjenkjenning og generere beskrivende tagger av bilder. Denne metadataen er søkbar, og kan spare mye tid med riktig forarbeid.

![[movie-slate-app.png]]
(http://www.movie-slate.com/)

Det samme gjelder i film, hvor man kan benytte en digital slate (klapper) til å merke filmklipp med scene og riktig tagning slik at en sparer tid på å finne riktig innhold.