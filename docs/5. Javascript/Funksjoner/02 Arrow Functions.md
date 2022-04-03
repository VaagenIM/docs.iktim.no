---
title: Arrow Functions
alias: Arrow Functions
author: Sondre Grønås
created: 26 March 2022
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