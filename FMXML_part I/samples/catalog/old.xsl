<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:template match="catalog">

<html>
<head>
<title><xsl:value-of select="company"/> Catalog</title>
</head>
<body bgcolor="white">
<h1><xsl:value-of select="company"/> Catalog</h1>
    <xsl:apply-templates select="item"/>
</body>
</html>
</xsl:template>

<xsl:template match="item">
    <h2><xsl:value-of select="name"/></h2>
    <p> Price: <xsl:value-of select="price" /> </p>
        <xsl:apply-templates select="colors"/>
    <blockquote>
        <xsl:value-of select="summary"/>
    </blockquote>
    <p>Manufactured by <xsl:value-of select="manufacturer"/></p>
    <hr />
</xsl:template>

<xsl:template match="colors">
<p>Available in these colors:</p>
<ul>
    <xsl:apply-templates select="color" />
</ul>
</xsl:template>

<xsl:template match="color">
<li> <xsl:value-of select="." />
    (<xsl:value-of select="./@sku" />) </li>
</xsl:template>

</xsl:stylesheet>

