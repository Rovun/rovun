<%
' FileName="Connection_odbc_conn_dsn.htm"
' Type="ADO" 
' DesigntimeType="ADO"
' HTTP="true"
' Catalog=""
' Schema=""
Dim DB,MM_connmusic_STRING
DB = "/mdb/music.mdb"
MM_connmusic_STRING = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & Server.MapPath(DB)
Set conn = Server.CreateObject("ADODB.Connection")
conn.open MM_connmusic_STRING
If Err Then
err.clear
Set conn = Nothing
Response.Write "数据库连接出错[代码：01]，请检查数据库链接文件中的连接字符串。"
Response.End
End If
%>