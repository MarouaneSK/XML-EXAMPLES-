<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    <xsl:template match="livres">
    <html>
    <body>
        <h1>Exercice 1</h1>
        <table border="1">
            <tr>
                <td>Tous les titres:</td>
                <td>Le titre de 2eme livre: </td>
                <td>Le titre avant dernier: </td>
                <td>Titre elements après derniere position:</td>
                <td>Titres et prix des livres:</td>
                <td>Tous les auteurs:</td>
                <td>Livres prix less than 30  </td>
                <td>Un seul auteur</td>
            </tr>
            <tr>
                <td><xsl:for-each select="//livre/titre"><xsl:value-of select="."/></xsl:for-each></td>
                <td><xsl:value-of select="livre[2]/titre"/></td>
                <td><xsl:value-of select="livre[last()-1]/titre"/></td>
                <td><xsl:for-each select="livre[position()>2]/titre"><xsl:value-of select="."/></xsl:for-each></td>
                <td><xsl:for-each select="livre"><xsl:value-of select="titre"/>,<xsl:value-of select="prix"/></xsl:for-each></td>
                <td><xsl:for-each select="//auteur"><xsl:value-of select="nom"/><xsl:value-of select="prenom"/></xsl:for-each></td>
                <td><xsl:for-each select="livre[prix &gt;30]/titre"><xsl:value-of select="."/></xsl:for-each></td>
                <td><xsl:for-each select="livre[count(auteurs/auteur)=1]/titre"><xsl:value-of select="."/></xsl:for-each></td>
                <td><xsl:for-each select="livre/titre">
                    <xsl:number  format="1" value="position()"/>
                        <xsl:value-of select="."/>
                </xsl:for-each>
                </td>
                <td><xsl:for-each select="livre/titre">
                    <xsl:value-of select="translate(.,'abcdefghijklmnopqrstuvwxyz','ABCDEFGHIJKLMN OPQRSTUVWXYZ')"/> 
                  
                    
                </xsl:for-each></td>

            </tr>
            
            
            
        </table>
    </body>
    </html>
</xsl:template>
</xsl:stylesheet>