<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<html>
			<head>
				<meta charset="UTF-8"/>
				<title>hola</title>
				<link href="text.css" rel="stylesheet" type="text/css"/>
			</head>
			<body>

			<ul id="menu">
				<li><a href="index.xml">HOME</a></li>
				<li><a href="miercoles.xml">Miercoles</a></li>
				<li><a href="jueves.xml">Jueves</a></li>
				<li><a href="viernes.xml">Viernes</a></li>
				<li><a href="sabado.xml">Sabado</a></li>
			</ul>

			<ul id="lateral">
				<xsl:for-each select="primavera/grup">
						<li><a href="{id}.xml"><xsl:value-of select="Artista"/></a></li>
				</xsl:for-each>
			</ul>



				<xsl:for-each select="primavera/grup[3]">
					<div id="info">
						<img src="{image}"/>
						<div id="informacion">
							<h2 id="{id}"><xsl:value-of select="Artista"/></h2>
							<h3><xsl:value-of select="Dia"/></h3>
							<h3><xsl:value-of select="Lloc"/></h3>
							<h3><xsl:value-of select="Titol"/></h3>
							<p><xsl:value-of select="Descripcio"/></p>
						</div>
					</div>
				</xsl:for-each>

			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
