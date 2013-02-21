<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
    version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <!-- Extracts ISO-3166-1 data from http://en.wikipedia.org/wiki/ISO_3166-1
         -->
    <xsl:output
        encoding="UTF-8"
        method="xml"
        indent="yes"
        />

    <xsl:template match="/">
        <countries>

            <xsl:apply-templates select="//*[@id='mw-content-text']/table[2]/tr[position()>1]"/>

        </countries>
    </xsl:template>

    <xsl:template match="tr">
        <country>
            <name language="en">
                <xsl:apply-templates select="td[1]"/>
            </name>
            <alpha2>
                <xsl:apply-templates select="td[2]"/>
            </alpha2>
            <alpha3>
                <xsl:apply-templates select="td[3]"/>
            </alpha3>
            <numeric>
                <xsl:apply-templates select="td[4]"/>
            </numeric>
        </country>
    </xsl:template>

</xsl:stylesheet>
