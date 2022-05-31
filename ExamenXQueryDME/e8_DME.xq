(:DME:)
<biblioteca>
{  
for $libro in doc("libros.xml")//libro
where $libro/@año>1993
where $libro/editorial = "Addison-Wesley"
return
  <libro>
  {
   <titulo>{$libro/titulo/text()}</titulo>,
  <publicado>{$libro/@año/number()}</publicado>
  }
  </libro>
}
</biblioteca>