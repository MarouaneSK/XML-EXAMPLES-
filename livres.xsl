<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
    <xsl:template match="livres">
        
        <html>
            <style>
                table {
                font-family: arial, sans-serif;
                border-collapse: collapse;
                width: 100%;
                }
                td, th {
                border: 1px solid #dddddd;
                text-align: left;
                padding: 8px;
                }
            </style>
            <body>
                <h3>Exercice 1</h3>
                <table>
                    <tr>
                        <td>Les titres de tous les livres:<xsl:for-each select="//livre/titre"><xsl:value-of select="."/></xsl:for-each></td>
                    </tr>
                    <tr>
                        <td>Le titre du 2eme livre: <xsl:value-of select="livre[2]/titre"/> </td>
                    </tr>
                    <tr>
                        <td>Le titre de l'avant dernier livre: <xsl:value-of select="livre[last()-1]/titre"/></td>
                    </tr>
                    <tr>
                        <td>Les titres des elements qui se trouvent apres la 2eme position: 
                            <xsl:for-each select="livre[position()>2]/titre"><xsl:value-of select="."/></xsl:for-each></td>
                    </tr>
                    <tr>
                        <td>Les titres et les prix de tous les livres: 
                            <xsl:for-each select="livre">(<xsl:value-of select="titre"/>,<xsl:value-of select="prix"/>)</xsl:for-each></td>
                    </tr>
                    <tr>
                        <td>La liste de tous les auteurs: 
                            <xsl:for-each select="//auteur">-<xsl:value-of select="nom"/><xsl:value-of select="prenom"/></xsl:for-each></td>
                    </tr>
                    <tr>
                        <td>Tous les livres avec un prix &lt; 30: 
                            <xsl:for-each select="livre[prix &lt;30]/titre">-<xsl:value-of select="."/></xsl:for-each></td>
                    </tr>
                    <tr>
                        <td>Tous les livres avec un seul auteur: 
                            <xsl:for-each select="livre[count(auteurs/auteur)=1]/titre">-<xsl:value-of select="."/></xsl:for-each></td>
                    </tr>
                    <tr>
                     
                    </tr>
                    <tr>
                        <td>Tous les livres en majuscule: 
                            <xsl:for-each select="livre/titre">
                                -<xsl:value-of select="translate(.,'abcdefghijklmnopqrstuvwxyz','ABCDEFGHIJKLMNOPQRSTUVWXYZ')"/> 
                            </xsl:for-each></td>
                    </tr>
                    
                </table>
            </body>
        </html>
        
    </xsl:template>
</xsl:stylesheet>
