(:DME:)
(:Liga SB:)(:1500 de pc o menos:)
for $pok in doc("pokemon")/pokedex/pokemon
let $pc := $pok/pc
order by count($pok/tipo) descending, number($pc)
where $pc <= 1500
where $pok/nombre != 'Gligar'
where $pok/tipo != 'Volador'
return $pok
