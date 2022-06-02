(:DME:)
(:Liga MB:)(:Cualquier pokemon:)

for $pok in /pokedex/pokemon
let $pc := $pok/pc
order by number($pc) descending
where $pc > 2500
return $pok
