(:DME:)
(:Liga MB:)(:Cualquier pokemon:)

for $pok in doc("pokemon")/pokedex/pokemon
let $pc := $pok/pc
order by count($pok/tipo) descending, number($pc)
where $pc > 2500
return $pok
