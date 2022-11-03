# **Hvordan bidra**
https://docs.iktim.no er et åpent prosjekt om en digital fagbok for IM, og vi ønsker at alle skal kunne bidra. Du kan også bidra ved å gi tilbakemeldinger på hvordan vi kan gjøre prosjektet bedre gjennom [issues siden](https://github.com/VaagenIM/docs.iktim.no/issues), eller sponse prosjektet.

Siden er bygget med [MkDocs](https://www.mkdocs.org/) og [Material for MkDocs](https://squidfunk.github.io/mkdocs-material/). Den drives av meg, [Sondre Grønås](https://github.com/sondregronas).

## **GitHub** :octocat:
Last ned GitHub repoet via https://desktop.github.com/. I mappen `docs` finner du alle dokumentene som er publisert på https://docs.iktim.no.

Du må også klone submodulene. Dette gjør du ved å trykke på `Fetch origin` i GitHub Desktop, og så trykke på `Fetch and clone submodules` i dialogen som dukker opp. For å foreslå endringer er du nødt til å opprette en pull-request i den respektive submodulen.

## **Markdown Editor** :pencil2:
Vi anbefaler å bruke [Obsidian](https://obsidian.md/) som markdown editor. Det er en gratis editor som er laget for å skrive i markdown. Du finner nedlastning til min Obsidian konfigurasjon via denne lenken, om du ikke ønsker å konfigurere selv: https://github.com/sondregronas/obsidian-config/releases

Format på lenker mellom sider er `[[Wikilinks]]`. For å endre navn på lenken bruker du `[[MinFil|Lenketekst]]`. Det er ikke mulig å ha filer med samme navn, unntak av index.md filer (Disse må ikke lenkes til).

### **Anbefalte plugins** :cd:
- [ ] Templater
- [ ] Update Time on Edit
- [ ] Zotero Desktop Connector
- [ ] Tag Wrangler
- [ ] Clear Unused Images

### **YAML Frontmatter** :pencil:
Via `Templater` kan du lage en template for nye sider. Ettersom _MkDocs_ bruker YAML frontmatter for å definere metadata, har vi laget en mal som inkluderer en frontmatter som er lik for alle sider. Du kan laste ned malen her: https://raw.githubusercontent.com/sondregronas/obsidian-config/main/Obsidian/_cfg/templates/new-docs.md

```yaml
title: # definerer tittelen til siden du lager.
alias: # definerer alternativer navn til siden. Dette gjør det enklere å søke opp siden, mens den gir mulighet å lenke til siden under flere navn.
```
### **Registrer deg som forfatter** :writing_hand:
For å registrere deg som forfatter, legg til deg selv til under `footermatter` plugin-seksjonen i `mkdocs.yml` fila. Du kan også legge til en profilbilde i `resources/assets/authors`.

Format: 
```yaml
Ditt navn | assets/authors/dittbilde.png | https://github.com/dinbruker
Ditt navn | <url-til-gravatar> | https://github.com/dinbruker
```

## **Bilder** :art:
Bilder skal ligge i en `_attachments` mappe i samme mappe som markdown filen.

For å automatisk bruke `_attachments` mappen til bilder i Obsidian, gå til `Settings` -> `Files And Links` -> `Default location for new attachments` og velg `In subfolder under current folder`. Subfolder navnet skal være `_attachments`.

## **YouTube** :clapper:
Via YouTube's embed kode kan du legge til videoer i markdown filer. For å få tak i embed koden, trykk på `Del` knappen under videoen, og velg `Innbygg`. Kopier koden og lim inn i markdown filen.

## **Zotero (Kilderefering)** :label:
Referansene legges til i `references` mappen som `.bib` format. For å legge til referanser, installer [Zotero](https://www.zotero.org/) og [Better BibTeX](https://retorque.re/zotero-better-bibtex/). Opprett gjerne din egen `.bib` fil.

Du finner referansene i Obsidian via `Zotero Desktop Connector` pluginen. For å legge til referanser, skriver du `[@citekey]` i markdown filen. For å få tak i citekey, trykk på `Better BibTeX` ikonet i Zotero, og velg `Copy citekey`.
