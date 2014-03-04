<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<!--#include file="Connections/condown.asp" -->
<%
Dim rs1
Dim rs1_numRows

Set rs1 =Server.CreateObject("ADODB.Recordset")
rs1.ActiveConnection = MM_condown_STRING
rs1.Source = "SELECT * FROM music1 ORDER BY ID DESC"
rs1.CursorType = 0
rs1.CursorLocation = 2
rs1.LockType = 1
rs1.Open()

rs1_numRows = 0
%>
<%
Dim rs2
Dim rs2_numRows

Set rs2 = Server.CreateObject("ADODB.Recordset")
rs2.ActiveConnection = MM_condown_STRING
rs2.Source = "SELECT * FROM music2 ORDER BY ID DESC"
rs2.CursorType = 0
rs2.CursorLocation = 2
rs2.LockType = 1
rs2.Open()

rs2_numRows = 0
%>
<%
Dim rs3
Dim rs3_numRows

Set rs3 = Server.CreateObject("ADODB.Recordset")
rs3.ActiveConnection = MM_condown_STRING
rs3.Source = "SELECT * FROM music3 ORDER BY ID DESC"
rs3.CursorType = 0
rs3.CursorLocation = 2
rs3.LockType = 1
rs3.Open()

rs3_numRows = 0
%>
<%
Dim Repeat1__numRows
Dim Repeat1__index

Repeat1__numRows = 22
Repeat1__index = 0
rs1_numRows = rs1_numRows + Repeat1__numRows
%>
<%
Dim Repeat2__numRows
Dim Repeat2__index

Repeat2__numRows = 22
Repeat2__index = 0
rs2_numRows = rs2_numRows + Repeat2__numRows
%>
<%
Dim Repeat3__numRows
Dim Repeat3__index

Repeat3__numRows = 22
Repeat3__index = 0
rs3_numRows = rs3_numRows + Repeat3__numRows
%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>优云下载-下载您需要的软件</title>
<link rel="stylesheet" type="text/css" media="all" href="/css/style.css">
</head>

<body>
<!--#include file="header.asp" -->
<div id="center">
  <div id="m1">
    <div class="STYLE36" id="m-1"><a href="http://bbs.rovun.com/" target="_blank" class="STYLE38">新知</a> <span class="STYLE38">| <span class="STYLE38">下载</span> |</span> <a href="http://t.rovun.com/" target="_blank" class="STYLE38">微博</a></div>
  </div>
  <div id="music1">
    <div class="STYLE27">
      <table width="100%" cellspacing="0">
        <tr>
          <td class="STYLE45"><a href="alldown.html" target="_blank" style="color:#000000">电脑软件</a></td>
        </tr>
      </table>
      
      <hr />
      <% 
While ((Repeat1__numRows <> 0) AND (NOT rs1.EOF)) 
%>
		<table width="100%" cellspacing="0" class="STYLE1">
          <tr>
            <td width="60%"><a target="_blank" href="play.asp?ID=<%=(rs1.Fields.Item("ID").Value)%>&md=music1"><%=(rs1.Fields.Item("musicName").Value)%></a></td>
            <td width="30%"><span class="STYLE37"><%=(rs1.Fields.Item("singerName").Value)%></span></td>
            <td width="10%"><a href="<%=(rs1.Fields.Item("musicURL").Value)%>" target="_blank"><img src="images/down-1.gif" width="16" height="16" border="0" /></a></td>
          </tr>
        </table>
        <% 
  Repeat1__index=Repeat1__index+1
  Repeat1__numRows=Repeat1__numRows-1
  rs1.MoveNext()
Wend
%>
</div>
</div>
  <div id="music2">
    <div class="STYLE27">
      <table width="100%" cellspacing="0">
        <tr>
          <td class="STYLE45"><a href="alldown.html" target="_blank" style="color:#000000">Android安卓</a></td>
        </tr>
      </table>
        
      <hr />
      <% 
While ((Repeat2__numRows <> 0) AND (NOT rs2.EOF)) 
%>
        <table width="100%" cellspacing="0" class="STYLE1">
          <tr>
            <td width="60%"><a target="_blank" href="play.asp?ID=<%=(rs2.Fields.Item("ID").Value)%>&md=music2"><%=(rs2.Fields.Item("musicName").Value)%></a></td>
            <td width="30%"><span class="STYLE37"><%=(rs2.Fields.Item("singerName").Value)%></span></td>
            <td width="10%"><a href="<%=(rs2.Fields.Item("musicURL").Value)%>" target="_blank"><img src="images/down-1.gif" width="16" height="16" border="0" /></a></td>
          </tr>
        </table>
        <% 
  Repeat2__index=Repeat2__index+1
  Repeat2__numRows=Repeat2__numRows-1
  rs2.MoveNext()
Wend
%>
    </div>
</div>
  <div id="music3">
    <div class="STYLE27">
      <table width="100%" cellspacing="0">
        <tr>
          <td class="STYLE45"><a href="alldown.html" target="_blank" style="color:#000000">iphone苹果</a></td>
        </tr>
      </table>
        
      <hr />
      <% 
While ((Repeat3__numRows <> 0) AND (NOT rs3.EOF)) 
%>
        <table width="100%" cellspacing="0" class="STYLE1">
          <tr>
            <td width="60%"><a target="_blank" href="play.asp?ID=<%=(rs3.Fields.Item("ID").Value)%>&md=music3"><%=(rs3.Fields.Item("musicName").Value)%></a></td>
            <td width="30%"><span class="STYLE37"><%=(rs3.Fields.Item("singerName").Value)%></span></td>
            <td width="10%"><a href="<%=(rs3.Fields.Item("musicURL").Value)%>" target="_blank"><img src="images/down-1.gif" width="16" height="16" border="0" /></a></td>
          </tr>
        </table>
        <% 
  Repeat3__index=Repeat3__index+1
  Repeat3__numRows=Repeat3__numRows-1
  rs3.MoveNext()
Wend
%>
</div>
</div>
  <div id="ad2">
    <table width="100%" cellspacing="0">
      <tr>
        <td align="center"><a href="http://vt.vancl.com/?source=rouvun485&sourcesuninfo=ad-9453-1-88-0-2" target="_blank"><img src="http://union.vancl.com/adpics.aspx?source=rouvun485&sourcesuninfo=ad-9453-1-88-0-2" width="200" height="200" border="0" /></a></td>
        <td align="center"><a href="http://miook.vancl.com/?source=rouvun485&sourcesuninfo=ad-9454-1-113-0-2" target="_blank"><img src="http://union.vancl.com/adpics.aspx?source=rouvun485&sourcesuninfo=ad-9454-1-113-0-2" width="200" height="200" border="0" /></a></td>
        <td align="center"><a href="http://accessories.vancl.com/?source=rouvun485&sourcesuninfo=ad-10896-1-123-0-2" target="_blank"><img src="http://union.vancl.com/adpics.aspx?source=rouvun485&sourcesuninfo=ad-10896-1-123-0-2" width="200" height="200" border="0" /></a>
		<td align="center"><a href="http://men.vancl.com/?source=rouvun485&sourcesuninfo=ad-10897-1-138-0-2" target="_blank"><img src="http://union.vancl.com/adpics.aspx?source=rouvun485&sourcesuninfo=ad-10897-1-138-0-2" width="200" height="200" border="0" /></a></td>
      </tr>
    </table>
</div>
</div>
<!--#include file="footer.asp" -->
</body>
</html>
<%
rs1.Close()
Set rs1 = Nothing
%>
<%
rs2.Close()
Set rs2 = Nothing
%>
<%
rs3.Close()
Set rs3 = Nothing
%>
