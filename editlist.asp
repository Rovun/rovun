<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<!--#include file="Connections/condown.asp" -->
<%
Dim rs1
Dim rs1_numRows

Set rs1 = Server.CreateObject("ADODB.Recordset")
rs1.ActiveConnection = MM_condown_STRING
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
<title>下载数据</title>
<script type="text/JavaScript">
<!--
function MM_openBrWindow(theURL,winName,features) { //v2.0
  window.open(theURL,winName,features);
}
//-->
</script>
</head>
<body>
  <table width="546" height="49">
    <tr>
      <td width="285"><strong>软件名</strong></td>
    <td width="211"><strong>类别</strong></td>
    <td width="34"><strong>修改</strong></td>
    </tr>
<% 
While ((Repeat1__numRows <> 0) AND (NOT rs1.EOF)) 
%>
    <tr>
      <td><a href="edit.asp?ID=<%=(rs1.Fields.Item("ID").Value)%>&md=<%=Request.QueryString("md")%>"><%=(rs1.Fields.Item("musicName").Value)%></a></td>
    <td><%=(rs1.Fields.Item("singerName").Value)%></td>
    <td width="34">
<a href="edit.asp?ID=<%=(rs1.Fields.Item("ID").Value)%>&md=<%=Request.QueryString("md")%>"><img src="images/edit.JPG" width="33" height="24"/></a></td>
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
