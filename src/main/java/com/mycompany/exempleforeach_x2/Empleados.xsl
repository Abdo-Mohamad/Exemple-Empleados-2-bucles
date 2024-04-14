<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>
    <xsl:template match="/">
        <html>
            <head>
                <title>Empleados.xsl</title>
            </head>
            <body>
                <h2>Lista de empleados y materiales utilizados</h2>
                <table border="1">
                    <tr>
                        <th>Nombre</th>
                        <th>Puesto</th>
                        <th>Materiales utilizados</th>
                    </tr>
                    <xsl:for-each select="empleados/empleado">
                        <tr>
                            <td>
                                <xsl:value-of select="nombre"/>
                            </td>
                            <td>
                                <xsl:value-of select="puesto"/>
                            </td>
                            <td>
                                <ul> <!-- para cada una de los elementos material que aparecen dentro del mismo empleado, los recorre y los imprime -->
                                    <xsl:for-each select="materiales_utilizados/material">
                                        <li>
                                            <xsl:value-of select="."/>
                                        </li>
                                    </xsl:for-each>
                                </ul>
                            </td>
                        </tr>
                    </xsl:for-each>
                </table> 
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
