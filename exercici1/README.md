# Exercici 1
> Implementació d'un processat del lletguatge regular de constants enteres.
> Accepta notació decimal, octal, hexadecimal i binari.
> Retorna notació decimal.

## Índex
* [Comentaris](#comentaris)
* [Tests usats](#tests-usats)
* [Com comprovar el test](#com-comprovar-el-test)
* [Notacions](#notacions)
  * [Decimal](#decimal)
  * [Octal](#octal)
  * [Hexadecimal](#hexadecimal)
  * [Binari](#binari)
* [Delimitadors](#delimitadors)

## Comentaris
- Comença amb /* i acaba amb */ .

## Tests usats
- test1.txt

## Com comprovar el test
- `./exercici1 < test1.txt`

## Notacions
### Decimal
- Expressat amb numeros decimals del rang 0-9.
### Octal
- Expressat amb una "o" o una "O" inicial seguit de numeros decimals del rang 0-7.
### Hexadecimal
- Expressat amb "ox" o "OX" inicial seguit de numeros decimals del rang 0-9 i/o lletres majúscules del rang A-F.
### Binari
- Expressat amb una "B" o una "B" inicial seguit de numeros decimals del rang 0-1.

## Delimitadors
- Es poden separar les notacions amb espais " ", tabs "\t" o nova línia "\n".
