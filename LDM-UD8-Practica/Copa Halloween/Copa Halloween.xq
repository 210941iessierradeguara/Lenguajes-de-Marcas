(:DME:)
(:Copa Halloween:)(:máximo 1500 pc 
[Veneno, fantasma, bicho, siniestro, hada]:)
for $pok in doc("pokemon")/pokedex/pokemon
let $pc := $pok/pc
let $tip := $pok/tipo
order by count($pok/tipo) descending, number($pc)
where $pc <= 1500
where $tip = 'Siniestro' or $tip = 'Hada' or $tip = 'Bicho' or $tip = 'Fantasma' or $tip = 'Veneno'
return $pok
