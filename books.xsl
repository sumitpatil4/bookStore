<html xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xsl:version="1.0">
<style>
body{
    margin:0;
    padding:0;
    box-sizing:border-box;
    font-family:Arial;
    font-size:16px;
    background-color:#ACECF7;
}
p{
    text-align:center;
}

h2{
    padding:10px;
    text-align:center;
}

.en{
    display:flex;
    flex-direction:row;
    overflow-x:auto;
    <!-- border:2px solid black; -->
    overflow-x:auto;
    height:35vh;
}

.hi{
    display:flex;
    flex-direction:row;
    overflow-x:auto;
    <!-- border:2px solid black; -->
    overflow-x:auto;
    height:35vh;
}

.box{
    background-color:#f2f2f2;
    display:flex;
    flex-direction:column;
    justify-content:center;
    align-items:center;
    padding:10px;
    justify-content:space-between;
    margin: 0 10px;
    width:100px;
    box-shadow: rgba(100, 100, 111, 0.2) 0px 7px 29px 0px;
    flex-shrink:0;
    flex-basis:175px;
}

.en::-webkit-scrollbar {
  display: none;
}

.hi::-webkit-scrollbar {
  display: none;
}

.en {
  -ms-overflow-style: none;
  scrollbar-width: none;
}

.hi {
  -ms-overflow-style: none;
  scrollbar-width: none;
}
</style>

<body>
    <h2>ENGLISH BOOKS</h2>
    <div class="en">
        <xsl:for-each select="books/book[./bookName/@lang = 'en']">
            <div class="box">
                <p><strong><xsl:value-of select="bookName" /></strong></p>
                <p>by <strong><xsl:value-of select="authorName" /></strong></p>
                <p>Price - <xsl:value-of select="bookPrice" /></p>
            </div>
        </xsl:for-each>
    </div>
    <h2>HINDI BOOKS</h2>
    <div class="hi">
        <xsl:for-each select="books/book[./bookName/@lang = 'hi']">
            <div class="box">
                <p><strong><xsl:value-of select="bookName" /></strong></p>
                <p>by <strong><xsl:value-of select="authorName" /></strong></p>
                <p>Price - <xsl:value-of select="bookPrice" /></p>
            </div>
        </xsl:for-each>
    </div>
</body>
</html>