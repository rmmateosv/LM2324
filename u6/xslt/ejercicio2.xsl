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
	<xsl:template match="gasolinera">
		<gasolinera>
			<xsl:attribute name="compañia"><xsl:value-of select='./compañia'/></xsl:attribute>
		</gasolinera>
	</xsl:template>
</xsl:stylesheet>