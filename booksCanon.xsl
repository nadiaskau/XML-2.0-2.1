<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns="http://www.w3.org/1999/xhtml">

	<xsl:output method="xml"
				indent="yes"
				omit-xml-declaration="no"
	            doctype-system="about:legacy-compat"/>

	<!-- The following rule matches the root element,
		 irrespective of name,
	     and creates an html outline with an apply templates somewhere
	-->
	<xsl:template match="/">
		<html>
			<head>
				<title><xsl:value-of select="/chapter/title"/></title>
				<meta charset="utf-8"/>
			</head>
			<body style="font-family: 'Arial'">
				<xsl:apply-templates/>		<!-- here the following
				                                 rules wil place
				                                 content -->
			</body>
		</html>
    </xsl:template>
    
    <xsl:template match="book">
        <div><xsl:apply-templates/></div>
        <hr></hr>
    </xsl:template>

    <xsl:template match="title">
        <h3><xsl:apply-templates/></h3>
    </xsl:template>

    <xsl:template match="author">
        <p>Author:<b><xsl:apply-templates/></b></p>
    </xsl:template>

    <xsl:template match="author">
        <p>Author:<b><xsl:apply-templates/></b></p>
    </xsl:template>

    <xsl:template match="edition">
        <p>Edition:<em><xsl:apply-templates/></em></p>
    </xsl:template>

    <xsl:template match="isbn">
        <p>ISBN:<xsl:apply-templates/></p>
    </xsl:template>

    <xsl:template match="publisher">
        <p>Publisher:<xsl:apply-templates/></p>
    </xsl:template>

    <xsl:template match="pages">
        <p>Pages:<xsl:apply-templates/></p>
    </xsl:template>

    <xsl:template match="price">
        <p>Price:<xsl:apply-templates/>
        </p>
    </xsl:template>

    <xsl:template match="currency">
        <p>Currency:<xsl:apply-templates/>
        </p>
    </xsl:template>

    <xsl:template match="comments">
        <p><b>Comments:</b><xsl:apply-templates/></p>
    </xsl:template>

</xsl:stylesheet>