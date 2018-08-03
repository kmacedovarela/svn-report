<?xml version="1.0" encoding="ISO-8859-1"?> 
<xsl:stylesheet version="2.0" 
xmlns:xsl="http://www.w3.org/1999/XSL/Transform"> 
<xsl:template match="/"> 
<html> 
<head>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous"/>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous"/>

    <meta charset="utf-8"/> 
</head>
<body> 
<h3 class="h3">TITULO</h3> 
<table  style="width: 100%; border: 2px solid black;" class="table table-striped">
    <thead>
    <tr>
        <th width="10%">
  		Rev No.
	</th>
        <th width="18%">
           Data               
        </th>
        <th width="18%">
           Autor 
        </th>
        <th width="">
           Mensagem      
        </th>
    </tr>
    </thead>
    <tbody>    
	<xsl:for-each select="log/logentry"> 
        <tr>         
            <td>             
                <xsl:value-of select="@revision"/> 
            </td>        
            <td>
                <xsl:value-of select="substring(date, 0, 11)" /> 
            </td>    
            <td>
                    <xsl:value-of select="author"/>
            </td>    
            <td>         
                    <xsl:value-of select="msg"/>
            </td>
        </tr>
    </xsl:for-each> 
    </tbody>
</table> 
</body> 
</html> 
</xsl:template> 
</xsl:stylesheet>
