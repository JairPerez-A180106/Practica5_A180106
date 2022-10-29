<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
    <html>
    <head>
    <title>Agencia de Autos Hidalgo</title>
    </head>
    <body  bgcolor="black">
      <h1  style="text-align:center;color:white">Agencia de Autos Hidalgo</h1>
      <h3  style="text-align:center;color:white">INVENTARIO GENERAL</h3>
      <table border="2" width="600" bgcolor="white" align="center">
        <tr bgcolor="#9acd32"><th>ID</th><th>Marca</th><th>Modelo</th><th>Año</th><th>Precio</th><th>Stock</th></tr>
        <xsl:for-each select="autos/auto">
        <tr style="text-align:center">
          <td><xsl:value-of select="id"/></td>
          <td><xsl:value-of select="marca"/></td>
          <td><xsl:value-of select="modelo"/></td>
          <td><xsl:value-of select="año"/></td>
          <td style="text-align:right"><xsl:value-of select="precio" /></td>
          <td><xsl:value-of select="stock"/></td>
        </tr>
        </xsl:for-each>
      </table>
    </body>
    </html>
  </xsl:template>
</xsl:stylesheet>