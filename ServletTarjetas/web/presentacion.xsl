<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
 
<xsl:template match="/">
    
<html>

    <head>
    <link href="estilo.css" rel="stylesheet"/>
    </head>
	
    <body>
		<center><font face="courier"><h1>NECO-SHOP-GAMERTAG</h1></font></center>
		<center>
			<table style='font-family:"Courier", Courier, monospace' border="15px" bgcolor="white">
			
			<tr bgcolor="#A34BE5 "> <!--  A221B7-->
				<th>Foto</th>
				<th>Nombre</th>
				<th>Precio</th>
				<th>Memoria</th>
				<th>Arquitectura</th>
				<th>GPU CLOCK</th>
				
				
			</tr>

			<xsl:for-each select="Productos/GPU">
    
			<div class="tarjeta" style="float: left; width: 320px;">
			
			<tr>
				
				<td> 
					<div style="width: 200px;">     
					<center>
						<xsl:element name="img">
							
							<xsl:attribute name="src">
								<xsl:value-of select="tarjeta/@ruta"/>
							</xsl:attribute>
							
							<xsl:attribute name="height">  155	</xsl:attribute>
							<xsl:attribute name="width">  155  </xsl:attribute>
							
						</xsl:element>
					</center>
					</div>
		
				</td>
				
				<td width="200"><xsl:value-of select="nombre"/></td>
				<td><xsl:value-of select="precio"/> </td>
				<td> <xsl:value-of select="memoria"/> </td>
				<td><xsl:value-of select="arquitectura"/> </td>
				<td><xsl:value-of select="gpu_clock"/> </td>

			</tr>
			
			</div>
			</xsl:for-each>

			</table>
			
		</center> 
		
		
		
		
		
	</body>

</html>
</xsl:template>
</xsl:stylesheet>