# Titel

Wanneer de gebruiker een artikel besteld dan moet je die toevoegen aan de database. Ik zou hiervoor een 
AddCartController maken. Deze pagina gebruik je straks om naartoe te posten vanuit het bestelformulier 

```
op de product detail pagina
<form action="/addcart" method="post">
.... jouw formulier
</form>
``` 

In de AddCartController ga je eerst een bestel record aanmaken, je voegt hiervoor een rij toe aan een tabel die
je orders noemt o.i.d.




1. Voeg toe aan winkelmandje knop afmaken.
2. Wanneer de gebruiker het artikel besteld dan 

## Voeg toe aan je winkelmandje knop
Als je daarop drukt dan wijzig je een hidden formulierveld, bijvoorbeeld door het veld een id te geven.

document.getElementById('grammen').value = 100;
document.getElementById('grammen').value = 1000;


