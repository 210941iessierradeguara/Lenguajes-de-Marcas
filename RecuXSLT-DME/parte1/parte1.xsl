<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output method="html" encoding="UTF-8"></xsl:output>
  <xsl:template match="/">
    <html>
      <head></head>
      <body>
        <table border="1">
          <tr>
            <th>Nombre</th>
            <th>Apellidos</th>
            <th>Oficina</th>
            <th>Departamento</th>
            <th>Año de contraración</th>
            <th>Responsabilidad</th>
            <th>Salario</th>
          </tr>
            <xsl:for-each select="empleados/empleado[@oficina='Huesca']">
              <tr>
                <td><xsl:value-of select="nombre"></xsl:value-of></td>
                <td><xsl:value-of select="concat(primer_apellido,'-',segundo_apellido)"></xsl:value-of></td>
                <td><xsl:value-of select="@oficina"></xsl:value-of></td>
                <td><xsl:value-of select="departamento"></xsl:value-of></td>
                <td><xsl:value-of select="anyo_contratacion"></xsl:value-of></td>
                  <xsl:choose>
                    <xsl:when test="ends-with(puesto, 'PR')">
                      <td bgcolor="green">Media</td>
                    </xsl:when>
                    <xsl:when test="ends-with(puesto, 'PRS')">
                      <td bgcolor="green">Media</td>
                    </xsl:when>
                    <xsl:when test="ends-with(puesto, 'AS')">
                      <td bgcolor = "orange">Alta</td>
                    </xsl:when>
                    <xsl:otherwise>
                      <td bgcolor="blue">Baja</td>
                    </xsl:otherwise>
                  </xsl:choose>
                <td><xsl:value-of select="salario"></xsl:value-of></td>
              </tr>
            </xsl:for-each>
        </table>
        <p> Salario medio Huesca: <xsl:value-of select="avg(empleados/empleado[@oficina = 'Huesca']/salario)"></xsl:value-of> </p>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>