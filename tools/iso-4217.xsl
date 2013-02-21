<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
    version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <!-- Extracts ISO-4217 1 data from http://en.wikipedia.org/wiki/ISO_4217
         -->
    <xsl:output
        encoding="UTF-8"
        method="xml"
        indent="yes"
        />

    <xsl:template match="/">
        <currencies>

            <xsl:apply-templates select="//*[@id='mw-content-text']/table[2]/tr[position()>1]"/>

        </currencies>
    </xsl:template>

    <xsl:template match="tr">
        <currency>
            <code>
                <xsl:apply-templates select="td[1]"/>
            </code>
            <numeric>
                <xsl:apply-templates select="td[2]"/>
            </numeric>
            <precision>
                <xsl:apply-templates select="td[3]"/>
            </precision>
            <name language="en">
                <xsl:apply-templates select="td[4]"/>
            </name>
            <xsl:for-each select="td[5]/a">
                <location language="en">
                    <xsl:apply-templates select="."/>
                </location>
            </xsl:for-each>
        </currency>
    </xsl:template>

</xsl:stylesheet>
