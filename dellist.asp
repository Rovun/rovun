<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<!--#include file="Connections/connmusic.asp" -->
<%
' *** Edit Operations: declare variables

Dim MM_editAction
Dim MM_abortEdit
Dim MM_editQuery
Dim MM_editCmd

Dim MM_editConnection
Dim MM_editTable
Dim MM_editRedirectUrl
Dim MM_editColumn
Dim MM_recordId

Dim MM_fieldsStr
Dim MM_columnsStr
Dim MM_fields
Dim MM_columns
Dim MM_typeArray
Dim MM_formVal
Dim MM_delim
Dim MM_altVal
Dim MM_emptyVal
Dim MM_i

MM_editAction = CStr(Request.ServerVariables("SCRIPT_NAME"))
If (Request.QueryString <> "") Then
  MM_editAction = MM_editAction & "?" & Server.HTMLEncode(Request.QueryString)
End If

' boolean to abort record edit
MM_abortEdit = false

' query string to execute
MM_editQuery = ""
%>
<%
' *** Delete Record: declare variables

if (CStr(Request("MM_delete")) = "form1" And CStr(Request("MM_recordId")) <> "") Then

  MM_editConnection = MM_connmusic_STRING
  MM_editTable = Request.QueryString("md")
  MM_editColumn = "ID"
  MM_recordId = "" + Request.Form("MM_recordId") + ""
  MM_editRedirectUrl = "del_suc.asp"

  ' append the query string to the redirect URL
  If (MM_editRedirectUrl <> "" And Request.QueryString <> "") Then
    If (InStr(1, MM_editRedirectUrl, "?", vbTextCompare) = 0 And Request.QueryString <> "") Then
      MM_editRedirectUrl = MM_editRedirectUrl & "?" & Request.QueryString
    Else
      MM_editRedirectUrl = MM_editRedirectUrl & "&" & Request.QueryString
    End If
  End If
  
End If
%>
<%
' *** Delete Record: construct a sql delete statement and execute it

If (CStr(Request("MM_delete")) <> "" And CStr(Request("MM_recordId")) <> "") Then

  ' create the sql delete statement
  MM_editQuery = "delete from " & MM_editTable & " where " & MM_editColumn & " = " & MM_recordId

  If (Not MM_abortEdit) Then
    ' execute the delete
    Set MM_editCmd = Server.CreateObject("ADODB.Command")
    MM_editCmd.ActiveConnection = MM_editConnection
    MM_editCmd.CommandText = MM_editQuery
    MM_editCmd.Execute
    MM_editCmd.ActiveConnection.Close

    If (MM_editRedirectUrl <> "") Then
      Response.Redirect(MM_editRedirectUrl)
    End If
  End If

End If
%>
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
<title>…æ≥˝“Ù¿÷</title>
<script type="text/JavaScript">
<!--
function MM_openBrWindow(theURL,winName,features) { //v2.0
  window.open(theURL,winName,features);
}
//-->
</script>
</head>
<body>
  <table width="564" height="51">
    <tr>
      <td width="279"><strong>∏Ë√˚</strong></td>
    <td width="208"><strong>∏Ë ÷</strong></td>
    <td width="61"><strong>…æ≥˝</strong></td>
    </tr>
<% 
While ((Repeat1__numRows <> 0) AND (NOT rs1.EOF)) 
%>
    <tr>
    <td height="28"><a href="edit.asp?ID=<%=(rs1.Fields.Item("ID").Value)%>&md=<%=Request.QueryString("md")%>"><%=(rs1.Fields.Item("musicName").Value)%></a></td>
    <td><%=(rs1.Fields.Item("singerName").Value)%></td>
    <td width="61">
<form METHOD="POST" action="<%=MM_editAction%>" name="form1" id="form1">
<input type="submit" name="Submit" value="Ã·Ωª" />
<input type="hidden" name="MM_delete" value="form1">
<input type="hidden" name="MM_recordId" value="<%= rs1.Fields.Item("ID").Value %>">
</form>
</td>
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
