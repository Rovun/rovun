<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<!--#include file="Connections/conmusic.asp" -->
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
rs.ActiveConnection = MM_conmusic_STRING
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
<title><%=(rs.Fields.Item("musicName").Value)%>-<%=(rs.Fields.Item("singerName").Value)%>-��������</title>
<meta name="Keywords" content="<%=(rs.Fields.Item("musicName").Value)%>��<%=(rs.Fields.Item("musicName").Value)%>-<%=(rs.Fields.Item("singerName").Value)%>��<%=(rs.Fields.Item("singerName").Value)%>���������֣���������������" />
<meta name="Description" content="������<%=(rs.Fields.Item("musicName").Value)%>�����߾���<%=(rs.Fields.Item("musicName").Value)%>-<%=(rs.Fields.Item("singerName").Value)%>�����֣�<%=(rs.Fields.Item("singerName").Value)%>���������֣�������������" />
<link rel="stylesheet" type="text/css" media="all" href="/css/style.css"></head>

<body>
<div id="play">
 <table width="100%" height="40" cellspacing="0" background="images/gif1.gif">
  <tr>
    <td>&nbsp;</td>
  </tr>
 </table>
 <table width="100%" cellspacing="0">
  <tr>
    <td align="center">������أ���<span class="STYLE1"><%=(rs.Fields.Item("musicURL").Value)%></span>��</td>
    <td align="center">���<span class="STYLE1"><%=(rs.Fields.Item("singerName").Value)%></span></td>
  </tr>
 </table>
 <table width="100%" height="60">
  <tr>
  <td>���ܣ�<span class="STYLE1"><%=(rs.Fields.Item("present").Value)%></span></td>
  </tr>
 </table>
</div>
</body>
</html>
<%
rs.Close()
Set rs = Nothing
%>
