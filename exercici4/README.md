# Exercici 4
> Implementació d'un llenguatge de la Lògica de Predicats CP1.
> Extensió de l'exercici 3 *Implementació d'un llenguatge de Lògica Proposicional amb CP0*.

## Índex
* [Canvis a l'enunciat](#canvis-a-lenunciat)
* [Tests usats](#tests-usats)
* [Com executar el test](#com-executar-el-test)
* [Variables](#variables)
* [Constants](#constants)
* [Predicats](#predicats)
* [Funcions](#funcions)
* [Operadors](#operadors)
  * [Paraules reservades](#paraules-reservades)
  * [Negació](#negació)
  * [Conjunció](#conjunció)
  * [Disjunció](#disjunció)
  * [Implicació](#implicació)
  * [Doble Implicació](#doble-implicació)
* [Símbols extres](#símbols-extres)
  * [Parèntesis](#parèntesis)

## Canvis a l'enunciat
Igual que en l'exercici 3:
- Per la conjunció en comptes de ∧ es fa servir &&.
- Per la disjunció en comptes de ∨ es fa servir ||.

## Tests usats
- test.txt

## Com executar el test
- `./exercici4 < test.txt`

## Variables
- Es poden fer servir les lletres minuscules del rang x-z seguit d'un digit del rang 1-9.

## Constants
- Es poden fer servir les lletres minuscules del rang a-c seguit d'un digit del rang 1-9.

## Predicats
- Es poden fer servir les lletres minuscules del rang P-T seguit d'un digit del rang 1-9.

## Funcions
- Es poden fer servir les lletres minuscules del rang f-g seguit d'un digit del rang 1-9.

## Operadors
### Paraules reservades
- Per a fer servir un FORALL s'accepta `forall`
- Per a fer servir un EXISTS s'accepta `exists`

### Negació
- `!`

### Conjunció
- `&&`

### Disjunció
- `||`

### Implicació
- `- >`

### Doble Implicació
- `< - >`

## Símbols extres
### Parèntesis
- S'obren amb `(` i es tanguen amb `)`, s'acostumen a fer sercir per a obrir i tancar una preposició, una funció o delimitar un FORALL.

  Per exemple:
  
  `forall x1 (P1(x1,x2) < − > (exits x2 P2(x2) && P3(x1,x2) || !P2(f1(x1,x2)))`
