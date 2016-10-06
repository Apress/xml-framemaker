<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:template match="catalog">

<html>
<head>
<title><xsl:value-of select="company"/> Catalog: Format 2</title>
</head>
<body bgcolor="white">
<h1 align="center"><i><xsl:value-of select="company"/> Catalog:
    Format 2</i></h1>
<table border="1">
    <xsl:apply-templates select="item"/>
</table>
</body>
</html>
</xsl:template>

<xsl:template match="item">
    <tr>
    <td width="25%">
    <small><xsl:value-of select="manufacturer"/></small> <br />
    <font size="+2"><b><xsl:value-of select="name"/></b></font> <br />
    <font size="+1"><b><xsl:value-of select="price" /> </b></font>
    </td>
    <td width="50%">
        <xsl:value-of select="description"/>
    </td>
    <td width="25%">
        <xsl:apply-templates select="./colors" />
    </td>
    </tr>
</xsl:template>

<xsl:template match="colors">
<table border="0" cellspacing="4">
    <xsl:apply-templates select="./color" />
</table>
</xsl:template>

<xsl:template match="color">
<tr>
    <td width="30" bgcolor="{./@hex}"><br /></td>
    <td><xsl:value-of select="." /></td>
</tr>
<tr>
    <td colspan="2">
    <small><xsl:value-of select="./@sku" /></small>
    </td>
</tr>
</xsl:template>

</xsl:stylesheet>

