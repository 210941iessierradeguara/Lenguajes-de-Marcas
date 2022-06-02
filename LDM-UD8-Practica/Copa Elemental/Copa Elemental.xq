(:DME:)
(:Copa Elemental:)(:máximo 500pc [fuego, agua, planta]:)
for $pok in /pokedex/pokemon
let $pc := $pok/pc
let $tip := $pok/tipo
order by number($pc) descending
where $pc <= 500
where $tip = 'Fuego' or $tip = 'Agua' or $tip = 'Planta'
return $pok
