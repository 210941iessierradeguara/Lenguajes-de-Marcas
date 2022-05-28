<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" encoding="UTF-8" />
    <xsl:template match="/">
        <html>
            <title>Empleados</title>
            <body>
                <h1>Empleados de Huesca</h1>
                <table border="1">
                    <tr >
                        <th><b>Nombre</b></th>
                        <th><b>Apellidos</b></th>
                        <th><b>Oficina</b></th>
                        <th><b>Departamento</b></th>
                        <th><b>Año de contratación</b></th>
                        <th><b>Responsabilidad</b></th>
                        <th><b>Salario</b></th>
                    </tr>
                    <xsl:for-each select="empleados/empleado[@oficina='Huesca']">
                        
                            <tr>
                                 
                                    <td><xsl:value-of select="nombre"></xsl:value-of></td>
                                    <td><xsl:value-of select="concat(primer_apellido,'-',segundo_apellido)"></xsl:value-of></td>
                                    <td><xsl:value-of select="@oficina"></xsl:value-of></td>
                                    <td><xsl:value-of select="departamento"></xsl:value-of></td>
                                    <td><xsl:value-of select="anyo_contratacion"></xsl:value-of></td>
                                    
                                        <xsl:choose>
                                            <xsl:when test="starts-with(puesto,'PR')">
                                                <td bgcolor='green'>MEDIA</td>
                                            </xsl:when>
                                            <xsl:when test="starts-with(puesto,'AS')">
                                                <td bgcolor='orange'>ALTA</td>
                                            </xsl:when>
                                            <xsl:otherwise>
                                                <td bgcolor='red'>MUY ALTA</td>
                                            </xsl:otherwise>
                                        </xsl:choose>
                                    <td><xsl:value-of select="salario"></xsl:value-of></td>
                            </tr>
                    </xsl:for-each>
                </table>

                <p>Empleados totales en Huesca: <xsl:value-of select="count(empleados/empleado[@oficina='Huesca'])"></xsl:value-of> </p>   
        
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
