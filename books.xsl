<html xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xsl:version="1.0">
<style>
body{
    margin:0;
    padding:0;
    box-sizing:border-box;
    font-family:Arial;
    font-size:12pt;
    display:flex;
    flex-direction:column;
    background-color:#ACECF7;
}

.en{
    display:flex;
    flex-direction:row;
    flex-wrap:no-wrap;
}

.hi{
    display:flex;
    flex-direction:row;
    flex-wrap:no-wrap;
}
.box{
    width:400px;
    background-color:#F4F4F9;
    display:flex;
    flex-direction:column;
    justify-content:center;
    align-items:center;
    padding:10px;
    justify-content:space-between;
    border-radius:8px;
    margin: 0 10px;
    box-shadow: rgba(100, 100, 111, 0.2) 0px 7px 29px 0px;
}
</style>
<body>
    <h2 style="text-align:center">ENGLISH BOOKS</h2>
    <div class="en">
        <xsl:for-each select="books/book[./bookName/@lang = 'en']">
            <div class="box">
                <p style="text-align:center"><strong><xsl:value-of select="bookName" /></strong></p>
                <p style="text-align:center">by <strong><xsl:value-of select="authorName" /></strong></p>
                <p style="text-align:center">Price - <xsl:value-of select="bookPrice" /></p>
            </div>
        </xsl:for-each>
    </div>
    <h2 style="text-align:center">HINDI BOOKS</h2>
    <div class="hi">
        <xsl:for-each select="books/book[./bookName/@lang = 'hi']">
            <div class="box">
                <p style="text-align:center"><strong><xsl:value-of select="bookName" /></strong></p>
                <p style="text-align:center">by <strong><xsl:value-of select="authorName" /></strong></p>
                <p style="text-align:center">Price - <xsl:value-of select="bookPrice" /></p>
            </div>
        </xsl:for-each>
    </div>
</body>
</html>