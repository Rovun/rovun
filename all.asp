<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<!--#include file="Connections/connmusic.asp" -->
<%
Dim rs1
Dim rs1_numRows

Set rs1 = Server.CreateObject("ADODB.Recordset")
rs1.ActiveConnection = MM_connmusic_STRING
rs1.Source = "SELECT * FROM " + Request.QueryString("md")
rs1.CursorType = 0
rs1.CursorLocation = 2
rs1.LockType = 1
rs1.Open()

rs1_numRows = 0
%>
<%
Dim Repeat1__numRows
Dim Repeat1__index

Repeat1__numRows = -1
Repeat1__index = 0
rs1_numRows = rs1_numRows + Repeat1__numRows
%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>音乐数据</title>
<script type="text/JavaScript">
<!--
function MM_openBrWindow(theURL,winName,features) { //v2.0
  window.open(theURL,winName,features);
}
//-->
</script>
</head>
<body>
  <table width="600" height="49">
    <tr>
      <td width="285"><strong>Name<strong></td>
    <td width="211"><strong>Singer<strong></td>
    <td width="52"><strong>Listen<strong></td>
	<td width="52"><strong>Down<strong></td>
    </tr>
<% 
While ((Repeat1__numRows <> 0) AND (NOT rs1.EOF)) 
%>
    <tr>
      <td><a target="_blank" href="play.asp?ID=<%=(rs1.Fields.Item("ID").Value)%>&md=music1"><%=(rs1.Fields.Item("musicName").Value)%></a></td>
    <td><%=(rs1.Fields.Item("singerName").Value)%></td>
    <td width="52">
<img src="images/music-04.gif" width="20" height="17" border="0" onclick="MM_openBrWindow('play.asp?ID=<%=(rs1.Fields.Item("ID").Value)%>&md=music1','播放音乐','width=500,height=500')" /></td>
    <td width="52">
<a href="<%=(rs1.Fields.Item("musicURL").Value)%>" target="_blank"><img src="images/down-1.gif" width="16" height="16" border="0" /></a></td>
    </tr>
    <% 
  Repeat1__index=Repeat1__index+1
  Repeat1__numRows=Repeat1__numRows-1
  rs1.MoveNext()
Wend
%>
</table>
</body>
</html>
<%
rs1.Close()
Set rs1 = Nothing
%>