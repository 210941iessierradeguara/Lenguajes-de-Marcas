(:DME:)
for $libro in doc("libros.xml")//libro
order by $libro/titulo
where $libro/autor/apellido = "Stevens"
return
$libro/titulo