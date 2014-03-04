<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<!--#include file="Connections/connmusic.asp" -->
<%
Dim rs__MMColParam
rs__MMColParam = "1"
If (Request.QueryString("ID") <> "") Then 
  rs__MMColParam = Request.QueryString("ID")
End If
%>
<%
Dim rs
Dim rs_numRows
Set rs =Server.CreateObject("ADODB.Recordset")
rs.ActiveConnection = MM_connmusic_STRING
rs.Source = "SELECT * FROM " + Request.QueryString("md") + " WHERE ID = " + Replace(rs__MMColParam, "'", "''") + ""
rs.CursorType = 0
rs.CursorLocation = 2
rs.LockType = 1
rs.Open()

rs_numRows = 0
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title><%=(rs.Fields.Item("musicName").Value)%>-<%=(rs.Fields.Item("singerName").Value)%>-优云音乐</title>
<style type="text/css">
<!--
body,td,th {
	font-size: 14px;
}
.STYLE1 {color: #0066FF}
-->
</style></head>

<body>
<table width="500" height="40" cellspacing="0" background="images/gif1.gif">
  <tr>
    <td>&nbsp;</td>
  </tr>
</table>
<table width="500" cellspacing="0">
  <tr>
    <td align="center">当前播放：《<span class="STYLE1"><%=(rs.Fields.Item("musicName").Value)%></span>》</td>
    <td align="center">歌手：<span class="STYLE1"><%=(rs.Fields.Item("singerName").Value)%></span></td>
  </tr>
</table>
<object width="500" height="60">
  <embed src="<%=(rs.Fields.Item("musicURL").Value)%>" width="500" height="60"></embed>
</object>
</body>
</
<%
rs.Close()
Set rs = Nothing
%>
html>
