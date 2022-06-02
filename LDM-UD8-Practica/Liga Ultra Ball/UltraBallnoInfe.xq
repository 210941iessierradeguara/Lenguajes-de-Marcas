(:DME:)
(:Liga UB:)(:2500 de pc o menos:)
(:Pokemons que no entrarían en otra categorias inferiores:)

for $pok in /pokedex/pokemon
let $pc := $pok/pc
let $na := count($pok/ataque)
order by number($pc) descending
where $pc <= 2500
where $pc > 1500
return $pok
