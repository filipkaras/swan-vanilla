# **SWAN PHP Developer Test (Vanilla version)**

## 👀  Popis

Vytvorte jednoduchú aplikáciu pre správu úloh (to-do list). Vašou úlohou je vytvoriť backend pre túto aplikáciu s použitím čistého PHP a Laravel frameworku.

## 🎯  Časť 1: Čisté PHP (45% váhy)
Naprogramujte jednoduchý backend pre správu úloh. Aplikácia by mala mať nasledujúce funkcie:
1. Zoznam úloh: Zobrazenie všetkých úloh zoradených od najnovšej po najstaršiu.
2. Pridanie úlohy: Formulár pre pridanie novej úlohy s názvom a popisom + validácia dát 3. Označenie úlohy ako hotovej: Možnosť označiť úlohu ako dokončenú.
Na riešenie tejto požiadavky použite čisté PHP pričom môžte použiť akékoľvek composer balíčky, ale nie framework. Pri riešení dodržujte zásady OOP.

## 🎯  Časť 1.1: Bonus - nepovinný (10% váhy)
Implementujte autentifikáciu do aplikácie v čistom PHP. Každý používateľ by mal mať svoj vlastný zoznam úloh.

## ✅  Postup Inštalácie

1. Checkout projektu z Githubu do lokálneho adresára
   - konfigurácia hosts súboru a vhost pre apache (záleží od lokálnej konfigurácie web servera)
   
2. Vytvorenie .env konfigurácie
   - skopírovanie .env.default a nastavenie prístupov do DB

3. Vytvorenie lokálnej databázy
   - názov databázy sa musí zhodovať s konfiguráciou v bode 2
   
4. Import demo údajov
   - demo údaje sú dostupné na Git-e v adresári demo
   - v demo databázy sú vytvorené 2 používateľské účty - "swan" a "swan2" (oba majú heslo nastavené na swan)

5. Inštalácia composer balíčkov
   - pred správny chod aplikácie je potrebná inštalácia composer balíčkov spustením príkazu "composer install" v adresári projektu
  
6. Nastavenie práv pre adresár writable
   - pre adresár writable je potrebné nastaviť práva na 770
   - do adresára ukladáme kompilované templaty

## 📝  Požiadavky:

Aplikácia vyžaduje PHP vo verzií 8.2 a MySQL vo verzií 8 alebo MariaDB vo verzií 11.

## 💡  Technické riešenie a developer komentáre:

Aplikáciu som vyvíjal s čistom (vanilla) PHP a použil som nasledovné balíčky:

## PHP
Dibi - veľmi jednoduchý databázový layer<br />
Smarty - template engine<br />
Nette Forms - formuláre s validáciou dát<br />
Tracy - debugger<br />
Bramus Router - routing v rámci MVC<br />

## HTML, CSS, JS
jQuery - pre prácu s JS + DataTables<br />
Bootstrap - grid layout + základný dizajn<br />
DataTables - pre prácu s tabuľkami<br />

Ochrana proti SQL injection je zabezpečená pomocou databázového layera Dibi a ochrana formulárot je zabezpečená knižnicou Nette Forms.

Po spustení aplikácie bude užívateľ presmerovaný na prihlasovaciu stránku. Po úspešnom prihlásení sa mu zobrazí zoznam jeho úloh v prehladnej tabuľke. Dáta sú načítavané AJAXom pre rýchlejšie zobrazenie a odľahčenie databázy pri väčšom objeme dát. Dáta je možné zoraďovať podľa ktoréhokoľvek stĺpca a zároveň v nich aj vyhľadávať. Užívateľ má tiež možnosť pridať novú ulohu (to-to), upraviť úlohu, prípadne ju označiť ako hotovú alebo znovu otvoriť.
