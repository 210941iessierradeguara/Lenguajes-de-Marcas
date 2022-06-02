(:DME:)
(:Liga SB:)(:1500 de pc o menos:)
for $pok in /pokedex/pokemon
let $pc := $pok/pc
order by number($pc) descending
where $pc <= 1500
where $pok/nombre != 'Gligar'
where $pok/tipo != 'Volador'
return $pok
