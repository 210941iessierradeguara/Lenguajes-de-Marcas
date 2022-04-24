(::)
(:Liga SB:)(:1500 de pc o menos:)
(:
for $pok in /pokedex/pokemon
let $pc := $pok/pc
order by number($pc) descending
where $pc <= 1500
where $pok/nombre != 'Gligar'
where $pok/tipo != 'Volador'
return $pok
:)

(:Liga UB:)(:2500 de pc o menos:)
(:Pokemons que no entrarían en otra categorias inferiores:)
(:
for $pok in /pokedex/pokemon
let $pc := $pok/pc
let $na := count($pok/ataque)
order by number($pc) descending
where $pc <= 2500
where $pc > 1500
return $pok
:)
(:Pokemons que podrían entrar en categorias inferiores:)
(:
for $pok in /pokedex/pokemon
let $pc := $pok/pc
let $na := count($pok/ataque)
order by number($pc) descending
where $pc <= 2500
where $pok/tipo = 'Volador'
where $pok/tipo = 'Tierra'
return $pok
:)
(:Liga MB:)(:Cualquier pokemon:)
(:
for $pok in /pokedex/pokemon
let $pc := $pok/pc
order by number($pc) descending
where $pc > 2500
return $pok
:)

(:Copa Halloween:)(:máximo 1500 pc 
[Veneno, fantasma, bicho, siniestro, hada]:)
(:
for $pok in /pokedex/pokemon
let $pc := $pok/pc
let $tip := $pok/tipo
order by number($pc) descending
where $pc <= 1500
where $tip = 'Siniestro' or $tip = 'Hada' or $tip = 'Bicho' or $tip = 'Fantasma' or $tip = 'Veneno'
return $pok
:)

(:Copa Volador:)(:máximo 1500 pc [Volador]:)
(:
for $pok in /pokedex/pokemon
let $pc := $pok/pc
order by number($pc) descending
where $pc <= 1500
where $pok/nombre != 'Gligar'
where $pok/tipo = 'Volador'
return $pok
:)

(:Copa Captura:)(:máximo 1500pc 
capturados al inicio de la liga:)


(:Copa Elemental:)(:máximo 500pc [fuego, agua, planta]:)
for $pok in /pokedex/pokemon
let $pc := $pok/pc
let $tip := $pok/tipo
order by number($pc) descending
where $pc <= 500
where $tip = 'Fuego' or $tip = 'Agua' or $tip = 'Planta'
return $pok
