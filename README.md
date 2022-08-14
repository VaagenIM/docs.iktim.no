# Fagbok for IKT IM
[![Build Status](https://img.shields.io/github/workflow/status/VaagenIM/docs.iktim.no/CI)](https://github.com/VaagenIM/docs.iktim.no/)
[![GitHub latest commit](https://img.shields.io/github/last-commit/VaagenIM/docs.iktim.no)](https://github.com/VaagenIM/docs.iktim.no/commit/)

Kilde for innholdet til https://docs.iktim.no.<br>

# Lyst å bidra?
Last ned GitHub repo'et via https://desktop.github.com/ (Via programmet, ikke nettsiden)

Bruk en markdown editor, for eksempel https://obsidian.md/
- Anbefalte plug-ins: **Templater**, **Update time on edit**, Zotero Desktop Connector, Auto Link Title, Tag Wrangler, Clear Unused Images.<br>
- Åpne Vaultet `docs` i Obsidian, endringer du gjør i Obsidian vil automatisk havne i GitHub Desktop.

For å sende inn dine forslag, trykker du "Commit" inne i GitHub Desktop.

Alternativt kan du og sette opp Obsidian til å bruke Git ved å følge denne oppskriften: https://github.com/denolehov/obsidian-git

## Lenker mellom sider
For å opprette lenker mellom dokumenter, brukes `[[Wikilinks]]` funksjonen til Obsidian. Skriv navnet på filen du skal linke til (`[[MinFil]]`), så ordner Obsidian resten. For å endre navn bruker du `[[MinFil|Lenketekst]]`. Det er ikke mulig å ha filer med samme navn, unntak av index.md filer (Disse skal ikke lenkes til).

Filer sorteres etter rekkefølge, benytt tall foran tittel (01 Første artikkel, 02 En annen artikkel). Navnet i sidebar defineres `title:` taggen i frontmatteren.

## Bilder
Bilder kan limes inn fra utklippstavle direkte i et dokument, disse skal legges inn i en _attachments mappe i samme lokasjon som filen du arbeider med.

**For å automatisk legge bildene inn i en _attachments mappe må du endre instillinger i "Files and Links" panelet:**
- Default location for new attachments: "`In subfolder under current folder`"
- Subfolder name: "`_attachments`"

## YouTube
Siden støtter innbygging av YouTube via HTML. Bruk "Del YouTube" funksjonen på YouTube og velg `Bygg inn` for å hente HTML koden.

## YAML Frontmatter [Template](https://github.com/SilentVoid13/Templater) (Obsidian)
```
---
title: <%* tR += `${tp.file.title}` %>
aliases: [<%* tR += `${tp.file.title}` %>,]
lang: nb-NO
authors:
  - Ditt navn
tags:
  - Definisjon
created: <% tp.date.now("YYYY-MM-DD HH:mm:ss") %>
updated: <% tp.date.now("YYYY-MM-DD HH:mm:ss") %>
---
# <%* tR += `${tp.file.title}` %>
<% tp.file.cursor() %>
```
`title` er navnet som vil vises i sidebar.

**OBS:** For å få bilde som en forfatter må du legge til en linje i `mkdocs.yml` under `footermatter / author_map` plugin feltet og eventuelt laste opp bilde under `resources/assets/authors`. Format: `Ditt navn | assets/authors/dittbilde.png | https://github.com/dinbruker`

# Kildereferering via [Zotero](https://www.zotero.org/)
Bibliotek (bruk synkronisering): https://www.zotero.org/groups/4658815/docs.iktim.no/library

Krever [Better BibTeX](https://retorque.re/zotero-better-bibtex/installation/)

OBS: `autoPinDelay` må være `> 0` for å kunne synkronisere opp Citekeys (https://retorque.re/zotero-better-bibtex/installation/preferences/hidden-preferences/#autopindelay).
