---
title: Arrow Functions
aliases: [Arrow Functions,]
lang: nb-NO
author:
  - Sondre Grønås
tags:
  - Javascript
date: 2022-04-09
---
# Arrow Functions
Arrow Functions er rett og slett en annen konvensjon (uskreven regel) på hvordan man skriver funksjoner i Javascript uten navn. Forskjellen er at man ikke skriver hele syntaksen, men heller bruker `=>` symbolet.

Arrow functions brukes mye til "anonyme funksjoner", som er funksjoner uten navn.

Eksempel med `Express`	
```js
app.get('/', (request, response) => {
	response.send("Hello World")
})

app.get('/', function(request, response) {
	response.send("Hello World")
})
```

## Les mer
[Arrow function expressions - JavaScript | MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Functions/Arrow_functions)