<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
    version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <!-- Extracts ISO-639-1 data with ISO-639-2T and ISO-639-2B references
         from http://en.wikipedia.org/wiki/List_of_ISO_639-1_codes
         -->
    <xsl:output
        encoding="UTF-8"
        method="xml"
        indent="yes"
        />

    <xsl:template match="/">
        <languages>

            <xsl:apply-templates select="//*[@id='mw-content-text']/table[3]/tr[position()>1]"/>

        </languages>
    </xsl:template>

    <xsl:template match="tr">
        <language>
            <family>
                <xsl:apply-templates select="td[2]"/>
            </family>
            <name language="en">
                <xsl:apply-templates select="td[3]"/>
            </name>
            <name>
                <xsl:attribute name="language"><xsl:apply-templates select="./td[5]"/></xsl:attribute>
                <xsl:apply-templates select="td[4]"/>
            </name>
            <iso-639-1>
                <xsl:apply-templates select="td[5]"/>
            </iso-639-1>
            <iso-639-2T>
                <xsl:apply-templates select="td[6]"/>
            </iso-639-2T>
            <iso-639-3>
                <xsl:apply-templates select="td[7]"/>
            </iso-639-3>
            <iso-639-6>
                <xsl:apply-templates select="td[8]"/>
            </iso-639-6>
            <notes>
                <xsl:apply-templates select="td[9]"/>
            </notes>
        </language>
    </xsl:template>

</xsl:stylesheet>
