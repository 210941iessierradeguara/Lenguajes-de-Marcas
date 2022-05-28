<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="text" encoding="UTF-8" />
	<xsl:template match="/">
		<xsl:variable name="separador" select="';'" />
		<xsl:variable name="linea_nueva" select="'&#xa;'" />
		
		<xsl:text>nombre</xsl:text>
		<xsl:value-of select="$separador" />
		<xsl:text>Primer Apellido</xsl:text>
		<xsl:value-of select="$separador" />
		<xsl:text>Segundo apellido</xsl:text>
		<xsl:value-of select="$separador" />
		<xsl:text>Oficina</xsl:text>
		<xsl:value-of select="$separador" />
		<xsl:text>Año de contratacion</xsl:text>
        <xsl:value-of select="$separador" />
		<xsl:text>Departamento</xsl:text>
        <xsl:value-of select="$separador" />
		<xsl:text>Salario Neto</xsl:text>
        <xsl:value-of select="$separador" />
		<xsl:text>Comentarios</xsl:text>
		<xsl:value-of select="$linea_nueva" />
		
		<xsl:for-each select="empleados/empleado[anyo_contratacion>='2015']">		
			
			<xsl:value-of select="nombre" />
			<xsl:value-of select="$separador" />							
			<xsl:value-of select="primer_apellido" />
			<xsl:value-of select="$separador" />
			<xsl:value-of select="segundo_apellido" />
			<xsl:value-of select="$separador" />
			<xsl:value-of select="@oficina" />
			<xsl:value-of select="$separador" />
			<xsl:value-of select="anyo_contratacion"/>
            <xsl:value-of select="$separador" />
			<xsl:value-of select="departamento"/>
            <xsl:value-of select="$separador" />
			<xsl:value-of select="concat(salario,' euros')"/>
            <xsl:value-of select="$separador" />
			<xsl:value-of select="substring(comentarios_rendimiento,1,35)"/>
			<xsl:value-of select="$linea_nueva" />	
			
		</xsl:for-each>		
	</xsl:template>	
</xsl:stylesheet>
