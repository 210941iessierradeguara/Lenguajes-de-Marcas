(:DME:)
for $libro in doc("libros.xml")//libro
let $num_autores := count($libro/autor)
return
<libro>
{
  <libro>
  {concat($libro/titulo/text(), " || autores: ", $num_autores)}
    </libro>
}
</libro>