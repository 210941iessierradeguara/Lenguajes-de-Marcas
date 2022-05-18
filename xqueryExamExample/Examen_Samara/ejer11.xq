for $libro in doc("libros.xml")//libro
where $libro/autor/apellido="Stevens"

return
$libro/titulo/text()