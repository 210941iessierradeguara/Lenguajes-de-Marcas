(:DME:)
(:Copa Captura:)(:máximo 1500pc 
capturados al inicio de la liga:)
for $pok in /pokedex/pokemon
let $pc := $pok/pc
let $d:=$pok/[@f_captura]
where $d >= '2022'
where $pc <= 1500
order by number($pc) descending
return $pok