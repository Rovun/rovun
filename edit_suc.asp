<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>更新成功</title>
<style type="text/css">
<!--
#apDiv1 {
	position:absolute;
	left:155px;
	top:89px;
	width:733px;
	height:121px;
	z-index:1;
}
.STYLE1 {
	font-size: 60px;
	font-weight: bold;
}
.STYLE2 {font-size: 60px}
.STYLE3 {color: #FF0000}
-->
</style>
</head>

<body>
<div id="apDiv1"><span class="STYLE1"><p align="center" class="STYLE3">恭喜！您已成功更新数据</p>
</span>
<div align="center"><span class="STYLE2"><a style="font-size: 16px" href="editlist.asp?md=<%=Request.QueryString("md")%>">返回继续修改数据</a></span></div>
</div>
</body>
</html>
