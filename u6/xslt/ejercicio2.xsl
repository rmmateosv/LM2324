<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
	
		<xsl:text disable-output-escaping="yes">
			&lt;?xml version="1.0" encoding="UTF-8"?&gt;
		</xsl:text>
		
		<gasolinerasExtremadura>
			<xsl:apply-templates select="//comunidad[@nombre='Extremadura']/gasolinera"/>
		</gasolinerasExtremadura>
		
	</xsl:template>
	<!-- Plantilla para nodos gasolinera-->
	<xsl:template match="gasolinera">
		<gasolinera>
			<xsl:attribute name="compañia"><xsl:value-of select='./compañia'/></xsl:attribute>
			<localidad>
				<xsl:attribute name="provincia"><xsl:value-of select='localidad/@provincia'/></xsl:attribute>
				<xsl:value-of select='localidad'/>
			</localidad>
			<ubicacion>
				<xsl:value-of select='carretera'/>, KM: <xsl:value-of select='carretera/@puntoKilometrico'/>
			</ubicacion>
			<telefono><xsl:value-of select='telefono'/></telefono>
		</gasolinera>
	</xsl:template>
</xsl:stylesheet>