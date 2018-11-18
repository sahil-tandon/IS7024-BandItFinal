<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
        <head>
            <meta charset="utf-8" />
            <title>User Details
			</title>
        </head>
        <body>
		<h1> Team Summary </h1>
            <table style="width:100%;" border="1|0">
                <tr>
                    <th>First Name</th>
					<th>Last Name</th>
					<th>Bearcat ID</th>
					<th>Favourite Keyboard Shortcut</th>
                </tr>
                <xsl:for-each select="/userdetails/users">
                    <tr>
                        <td>
						<xsl:value-of select = "firstname"/>
						</td>
						<td>
						<xsl:value-of select = "lastname"/>
						</td>
						<td>
						<xsl:value-of select = "bearcatid"/>
						</td>
						<td>
						<xsl:value-of select = "favoriteshortcut"/>
						</td>
                    </tr>
                </xsl:for-each>
            </table>

        </body>
        </html>
        </xsl:template>
    </xsl:stylesheet>