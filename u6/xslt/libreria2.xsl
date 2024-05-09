<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<hmtl>
			<head>
				<title>Librería</title>
				<link rel="stylesheet" type="text/css" href="libreria.css"/>
			</head>
			<body>
				<xsl:for-each select="bookstore/book">
					<xsl:sort select="title"/>
					<h3><xsl:value-of select="title"/></h3>
				</xsl:for-each>
			</body>
		</hmtl>
	</xsl:template>	
</xsl:stylesheet>