<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<!--#include file="Connections/connmusic.asp" -->
<%
Dim rs1
Dim rs1_numRows

Set rs1 =Server.CreateObject("ADODB.Recordset")
rs1.ActiveConnection = MM_connmusic_STRING
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
rs2.ActiveConnection = MM_connmusic_STRING
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
rs3.ActiveConnection = MM_connmusic_STRING
rs3.Source = "SELECT * FROM music3 ORDER BY ID DESC"
rs3.CursorType = 0
rs3.CursorLocation = 2
rs3.LockType = 1
rs3.Open()

rs3_numRows = 0
%>
<%
Dim rs4
Dim rs4_numRows

Set rs4 = Server.CreateObject("ADODB.Recordset")
rs4.ActiveConnection = MM_connmusic_STRING
rs4.Source = "SELECT * FROM music4 ORDER BY ID DESC"
rs4.CursorType = 0
rs4.CursorLocation = 2
rs4.LockType = 1
rs4.Open()

rs4_numRows = 0
%>
<%
Dim rs5
Dim rs5_numRows

Set rs5 = Server.CreateObject("ADODB.Recordset")
rs5.ActiveConnection = MM_connmusic_STRING
rs5.Source = "SELECT * FROM music5 ORDER BY ID DESC"
rs5.CursorType = 0
rs5.CursorLocation = 2
rs5.LockType = 1
rs5.Open()

rs5_numRows = 0
%>
<%
Dim rs6
Dim rs6_numRows

Set rs6 = Server.CreateObject("ADODB.Recordset")
rs6.ActiveConnection = MM_connmusic_STRING
rs6.Source = "SELECT * FROM music6 ORDER BY ID DESC"
rs6.CursorType = 0
rs6.CursorLocation = 2
rs6.LockType = 1
rs6.Open()

rs6_numRows = 0
%>
<%
Dim rs7
Dim rs7_cmd
Dim rs7_numRows

Set rs7_cmd = Server.CreateObject ("ADODB.Command")
rs7_cmd.ActiveConnection = MM_connmusic_STRING
rs7_cmd.CommandText = "SELECT * FROM music7 ORDER BY ID DESC" 
rs7_cmd.Prepared = true

Set rs7 = rs7_cmd.Execute
rs7_numRows = 0
%>
<%
Dim rs8
Dim rs8_cmd
Dim rs8_numRows

Set rs8_cmd = Server.CreateObject ("ADODB.Command")
rs8_cmd.ActiveConnection = MM_connmusic_STRING
rs8_cmd.CommandText = "SELECT * FROM music8 ORDER BY ID DESC" 
rs8_cmd.Prepared = true

Set rs8 = rs8_cmd.Execute
rs8_numRows = 0
%>
<%
Dim rs9
Dim rs9_cmd
Dim rs9_numRows

Set rs9_cmd = Server.CreateObject ("ADODB.Command")
rs9_cmd.ActiveConnection = MM_connmusic_STRING
rs9_cmd.CommandText = "SELECT * FROM music9 ORDER BY ID DESC" 
rs9_cmd.Prepared = true

Set rs9 = rs9_cmd.Execute
rs9_numRows = 0
%>
<%
Dim Repeat1__numRows
Dim Repeat1__index

Repeat1__numRows = 15
Repeat1__index = 0
rs1_numRows = rs1_numRows + Repeat1__numRows
%>
<%
Dim Repeat2__numRows
Dim Repeat2__index

Repeat2__numRows = 15
Repeat2__index = 0
rs2_numRows = rs2_numRows + Repeat2__numRows
%>
<%
Dim Repeat3__numRows
Dim Repeat3__index

Repeat3__numRows = 15
Repeat3__index = 0
rs3_numRows = rs3_numRows + Repeat3__numRows
%>
<%
Dim Repeat4__numRows
Dim Repeat4__index

Repeat4__numRows = 15
Repeat4__index = 0
rs4_numRows = rs4_numRows + Repeat4__numRows
%>
<%
Dim Repeat6__numRows
Dim Repeat6__index

Repeat6__numRows = 15
Repeat6__index = 0
rs6_numRows = rs6_numRows + Repeat6__numRows
%>
<%
Dim Repeat7__numRows
Dim Repeat7__index

Repeat7__numRows = 15
Repeat7__index = 0
rs7_numRows = rs7_numRows + Repeat7__numRows
%>
<%
Dim Repeat8__numRows
Dim Repeat8__index

Repeat8__numRows = 15
Repeat8__index = 0
rs8_numRows = rs8_numRows + Repeat8__numRows
%>
<%
Dim Repeat9__numRows
Dim Repeat9__index

Repeat9__numRows = 15
Repeat9__index = 0
rs9_numRows = rs9_numRows + Repeat9__numRows
%>
<%
Dim Repeat5__numRows
Dim Repeat5__index

Repeat5__numRows = 15
Repeat5__index = 0
rs5_numRows = rs5_numRows + Repeat5__numRows
%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>ÓÅÔÆÒôÀÖ-¾²ÌýÔÚÏßÒôÀÖ</title>
<link rel="stylesheet" type="text/css" media="all" href="/css/style.css">
<script type="text/JavaScript">
<!--

function MM_openBrWindow(theURL,winName,features) { //v2.0
  window.open(theURL,winName,features);
}
//-->
</script>
</head>

<body>
<!--#include file="header.asp" -->
<div id="center">
  <div id="m1">
    <div class="STYLE36" id="m-1"><a href="http://bbs.rovun.com/" target="_blank" class="STYLE38">ÐÂÖª</a> <span class="STYLE38">| <span class="STYLE38">ÒôÀÖ</span> |</span> <a href="http://t.rovun.com/" target="_blank" class="STYLE38">Î¢²©</a></div>
  </div>
  <div id="music1">
    <div class="STYLE27">
      <table width="100%" cellspacing="0">
        <tr>
          <td class="STYLE45"><a href="allmusic.html" target="_blank" style="color:#000000">ÍÆ¼ö¸èÇú</td>
        </tr>
      </table>
      
      <hr />
      <% 
While ((Repeat1__numRows <> 0) AND (NOT rs1.EOF)) 
%>
		<table width="100%" cellspacing="0" class="STYLE1">
          <tr>
            <td width="140"><a target="_blank" href="play.asp?ID=<%=(rs1.Fields.Item("ID").Value)%>&md=music1"><%=(rs1.Fields.Item("musicName").Value)%></a></td>
            <td width="90"><span class="STYLE37"><%=(rs1.Fields.Item("singerName").Value)%></span></td>
            <td width="20"><img src="images/music-04.gif" width="20" height="17" border="0" onClick="MM_openBrWindow('play.asp?ID=<%=(rs1.Fields.Item("ID").Value)%>&md=music1','²¥·ÅÒôÀÖ','width=500,height=500')" /></td>
            <td width="20"><a href="<%=(rs1.Fields.Item("musicURL").Value)%>" target="_blank"><img src="images/down-1.gif" width="16" height="16" border="0" /></a></td>
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
          <td class="STYLE45"><a href="allmusic.html" target="_blank" style="color:#000000">»³¾É½ðÇú</td>
        </tr>
      </table>
        
      <hr />
      <% 
While ((Repeat2__numRows <> 0) AND (NOT rs2.EOF)) 
%>
        <table width="100%" cellspacing="0" class="STYLE1">
          <tr>
            <td width="140"><a target="_blank" href="play.asp?ID=<%=(rs2.Fields.Item("ID").Value)%>&md=music2"><%=(rs2.Fields.Item("musicName").Value)%></a></td>
            <td width="90"><span class="STYLE37"><%=(rs2.Fields.Item("singerName").Value)%></span></td>
            <td width="20"><img src="images/music-04.gif" width="20" height="17" border="0" onClick="MM_openBrWindow('play.asp?ID=<%=(rs2.Fields.Item("ID").Value)%>&md=music2','²¥·ÅÒôÀÖ','width=500,height=500')" /></td>
            <td width="20"><a href="<%=(rs2.Fields.Item("musicURL").Value)%>" target="_blank"><img src="images/down-1.gif" width="16" height="16" border="0" /></a></td>
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
          <td class="STYLE45"><a href="allmusic.html" target="_blank" style="color:#000000">ÍøÂç¸èÇú</td>
        </tr>
      </table>
        
      <hr />
      <% 
While ((Repeat3__numRows <> 0) AND (NOT rs3.EOF)) 
%>
        <table width="100%" cellspacing="0" class="STYLE1">
          <tr>
            <td width="140"><a target="_blank" href="play.asp?ID=<%=(rs3.Fields.Item("ID").Value)%>&md=music3"><%=(rs3.Fields.Item("musicName").Value)%></a></td>
            <td width="90"><span class="STYLE37"><%=(rs3.Fields.Item("singerName").Value)%></span></td>
            <td width="20"><img src="images/music-04.gif" width="20" height="17" onClick="MM_openBrWindow('play.asp?ID=<%=(rs3.Fields.Item("ID").Value)%>&md=music3','²¥·ÅÒôÀÖ','width=500,height=500')" /></td>
            <td width="20"><a href="<%=(rs3.Fields.Item("musicURL").Value)%>" target="_blank"><img src="images/down-1.gif" width="16" height="16" border="0" /></a></td>
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
  <div id="m2">
    <table width="100%" height="31" cellspacing="0">
      <tr>
        <td class="STYLE42">¾¢±¬</td>
        <td class="STYLE42">°®Çé</td>
        <td class="STYLE42">ÐÀÉÍ</td>
      </tr>
    </table>
</div>
  <div id="music4">
    <div class="STYLE27">
      <table width="100%" cellspacing="0">
        <tr>
          <td class="STYLE45"><a href="allmusic.html" target="_blank" style="color:#000000">DJÎèÇú</td>
        </tr>
      </table>
        
      <hr />
      <% 
While ((Repeat4__numRows <> 0) AND (NOT rs4.EOF)) 
%>
        <table width="100%" cellspacing="0" class="STYLE1">
          <tr>
            <td width="140"><a target="_blank" href="play.asp?ID=<%=(rs4.Fields.Item("ID").Value)%>&md=music4"><%=(rs4.Fields.Item("musicName").Value)%></a></td>
            <td width="90"><span class="STYLE37"><%=(rs4.Fields.Item("singerName").Value)%></span></td>
            <td width="20"><img src="images/music-04.gif" width="20" height="17" onClick="MM_openBrWindow('play.asp?ID=<%=(rs4.Fields.Item("ID").Value)%>&md=music4','²¥·ÅÒôÀÖ','width=500,height=500')" /></td>
            <td width="20"><a href="<%=(rs4.Fields.Item("musicURL").Value)%>" target="_blank"><img src="images/down-1.gif" width="16" height="16" border="0" /></a></td>
          </tr>
        </table>
        <% 
  Repeat4__index=Repeat4__index+1
  Repeat4__numRows=Repeat4__numRows-1
  rs4.MoveNext()
Wend
%>
</div></div>
  <div id="music5">
    <div class="STYLE27">
      <table width="100%" cellspacing="0">
        <tr>
          <td class="STYLE45"><a href="allmusic.html" target="_blank" style="color:#000000">Çé¸è</td>
        </tr>
      </table>
        
      <hr />
      <% 
While ((Repeat5__numRows <> 0) AND (NOT rs5.EOF)) 
%>
        <table width="100%" cellspacing="0" class="STYLE1">
          <tr>
            <td width="140"><a target="_blank" href="play.asp?ID=<%=(rs5.Fields.Item("ID").Value)%>&md=music5"><%=(rs5.Fields.Item("musicName").Value)%></a></td>
            <td width="90"><span class="STYLE37"><%=(rs5.Fields.Item("singerName").Value)%></span></td>
            <td width="20"><img src="images/music-04.gif" width="20" height="17" onClick="MM_openBrWindow('play.asp?ID=<%=(rs5.Fields.Item("ID").Value)%>&md=music5','²¥·ÅÒôÀÖ','width=500,height=500')" /></td>
            <td width="20"><a href="<%=(rs5.Fields.Item("musicURL").Value)%>" target="_blank"><img src="images/down-1.gif" width="16" height="16" border="0" /></a></td>
          </tr>
        </table>
        <% 
  Repeat5__index=Repeat5__index+1
  Repeat5__numRows=Repeat5__numRows-1
  rs5.MoveNext()
Wend
%>
</div></div>
  <div id="music6">
    <div class="STYLE27">
      <table width="100%" cellspacing="0">
        <tr>
          <td class="STYLE45"><a href="allmusic.html" target="_blank" style="color:#000000">¸ÖÇÙÇú</td>
        </tr>
      </table>
        
      <hr />
      <% 
While ((Repeat6__numRows <> 0) AND (NOT rs6.EOF)) 
%>
        <table width="100%" cellspacing="0" class="STYLE1">
          <tr>
            <td width="140"><a target="_blank" href="play.asp?ID=<%=(rs6.Fields.Item("ID").Value)%>&md=music6"><%=(rs6.Fields.Item("musicName").Value)%></a></td>
            <td width="90"><span class="STYLE37"><%=(rs6.Fields.Item("singerName").Value)%></span></td>
            <td width="20"><img src="images/music-04.gif" width="20" height="17" onClick="MM_openBrWindow('play.asp?ID=<%=(rs6.Fields.Item("ID").Value)%>&md=music6','²¥·ÅÒôÀÖ','width=500,height=500')" /></td>
            <td width="20"><a href="<%=(rs6.Fields.Item("musicURL").Value)%>" target="_blank"><img src="images/down-1.gif" width="16" height="16" border="0" /></a></td>
          </tr>
        </table>
        <% 
  Repeat6__index=Repeat6__index+1
  Repeat6__numRows=Repeat6__numRows-1
  rs6.MoveNext()
Wend
%>
</div></div>
  <div id="m3">
    <table width="100%" cellspacing="0">
      <tr>
        <td class="STYLE42">ÍâÓï</td>
        <td class="STYLE42">Çú·ç</td>
        <td class="STYLE42">Äê´ú</td>
      </tr>
    </table>
</div>
  <div id="music7">
    <div class="STYLE27">
      <table width="100%" cellspacing="0">
        <tr>
          <td class="STYLE45"><a href="allmusic.html" target="_blank" style="color:#000000">Å·ÃÀ</td>
        </tr>
      </table>
        
      <hr />
      <% 
While ((Repeat7__numRows <> 0) AND (NOT rs7.EOF)) 
%>
        <table width="100%" cellspacing="0" class="STYLE1">
          <tr>
            <td width="140"><a target="_blank" href="play.asp?ID=<%=(rs7.Fields.Item("ID").Value)%>&md=music7"><%=(rs7.Fields.Item("musicName").Value)%></a></td>
            <td width="90"><span class="STYLE37"><%=(rs7.Fields.Item("singerName").Value)%></span></td>
            <td width="20"><img src="images/music-04.gif" width="20" height="17" onClick="MM_openBrWindow('play.asp?ID=<%=(rs7.Fields.Item("ID").Value)%>&md=music7','²¥·ÅÒôÀÖ','width=500,height=500')" /></td>
            <td width="20"><a href="<%=(rs7.Fields.Item("musicURL").Value)%>" target="_blank"><img src="images/down-1.gif" width="16" height="16" border="0" /></a></td>
          </tr>
        </table>
        <% 
  Repeat7__index=Repeat7__index+1
  Repeat7__numRows=Repeat7__numRows-1
  rs7.MoveNext()
Wend
%>
</div></div>
  <div id="music8">
    <div class="STYLE27">
      <table width="100%" cellspacing="0">
        <tr>
          <td class="STYLE45"><a href="allmusic.html" target="_blank" style="color:#000000">ÖÐ¹ú·ç</td>
        </tr>
      </table>
        
      <hr />
      <% 
While ((Repeat8__numRows <> 0) AND (NOT rs8.EOF)) 
%>
        <table width="100%" cellspacing="0" class="STYLE1">
          <tr>
            <td width="140"><a target="_blank" href="play.asp?ID=<%=(rs8.Fields.Item("ID").Value)%>&md=music8"><%=(rs8.Fields.Item("musicName").Value)%></a></td>
            <td width="90"><span class="STYLE37"><%=(rs8.Fields.Item("singerName").Value)%></span></td>
            <td width="20"><img src="images/music-04.gif" width="20" height="17" onClick="MM_openBrWindow('play.asp?ID=<%=(rs8.Fields.Item("ID").Value)%>&md=music8','²¥·ÅÒôÀÖ','width=500,height=500')" /></td>
            <td width="20"><a href="<%=(rs8.Fields.Item("musicURL").Value)%>" target="_blank"><img src="images/down-1.gif" width="16" height="16" border="0" /></a></td>
          </tr>
        </table>
        <% 
  Repeat8__index=Repeat8__index+1
  Repeat8__numRows=Repeat8__numRows-1
  rs8.MoveNext()
Wend
%>
</div></div>
  <div id="music9">
    <div class="STYLE27">
      <table width="100%" cellspacing="0">
        <tr>
          <td class="STYLE45"><a href="allmusic.html" target="_blank" style="color:#000000">90ºó</td>
        </tr>
      </table>
        
      <hr />
      <% 
While ((Repeat9__numRows <> 0) AND (NOT rs9.EOF)) 
%>
        <table width="100%" cellspacing="0" class="STYLE1">
          <tr>
            <td width="140"><a target="_blank" href="play.asp?ID=<%=(rs9.Fields.Item("ID").Value)%>&md=music9"><%=(rs9.Fields.Item("musicName").Value)%></a></td>
            <td width="90"><span class="STYLE37"><%=(rs9.Fields.Item("singerName").Value)%></span></td>
            <td width="20"><img src="images/music-04.gif" width="20" height="17" onClick="MM_openBrWindow('play.asp?ID=<%=(rs9.Fields.Item("ID").Value)%>&md=music9','²¥·ÅÒôÀÖ','width=500,height=500')" /></td>
            <td width="20"><a href="<%=(rs9.Fields.Item("musicURL").Value)%>" target="_blank"><img src="images/down-1.gif" width="16" height="16" border="0" /></a></td>
          </tr>
        </table>
        <% 
  Repeat9__index=Repeat9__index+1
  Repeat9__numRows=Repeat9__numRows-1
  rs9.MoveNext()
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
<%
rs4.Close()
Set rs4 = Nothing
%>
<%
rs5.Close()
Set rs5 = Nothing
%>
<%
rs6.Close()
Set rs6 = Nothing
%>
<%
rs7.Close()
Set rs7 = Nothing
%>
<%
rs8.Close()
Set rs8 = Nothing
%>
<%
rs9.Close()
Set rs9 = Nothing
%>
