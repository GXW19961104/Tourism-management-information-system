<%@ Page language="c#" Inherits="GROUP.travel.Admin_Index_Top" CodeFile="Admin_Index_Top.aspx.cs" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>Admin_Index_Top</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
		<style type="text/css"> A:link { COLOR: #ffffff; TEXT-DECORATION: none } A:hover { COLOR: #666666 } A:visited { COLOR: #000000; TEXT-DECORATION: none } TD { FONT-SIZE: 9pt; COLOR: #ffffff; FONT-FAMILY: "宋体" } IMG { FILTER: Alpha(opacity:100); chroma: #FFFFFF) } </style>
		<base target="main">
		<script>
function preloadImg(src)
{
	var img=new Image();
	img.src=src
}
preloadImg("images/admin_top_open.gif");

var displayBar=true;
function switchBar(obj)
{
	if (displayBar)
	{
		parent.frame.cols="0,*";
		displayBar=false;
		obj.src="images/admin_top_open.gif";
		obj.title="打开左边管理菜单";
	}
	else{
		parent.frame.cols="180,*";
		displayBar=true;
		obj.src="images/admin_top_close.gif";
		obj.title="关闭左边管理菜单";
	}
}
		</script>
	</HEAD>
	<body background="images/admin_top_bg.gif" leftmargin="0" topmargin="0">
		<form id="Form1" method="post" runat="server">
			<table height="100%" width="100%" border="0" cellpadding="0" cellspacing="0">
				<tr valign="middle">
					<td width="50">
						<img onclick="switchBar(this)" src="images/admin_top_close.gif" title="关闭左边管理菜单" style="CURSOR:hand">
					</td>
					<td width="40">
						<img src="images/admin_top_icon_1.gif">
					</td>
					<td width="100">
						<a href="Admin_userman.aspx" target="main"><font color="#ffffff">修改密码</font></a>
					</td>
					<td width="40">
					</td>
					<td width="100">&nbsp;
					</td>
					<td width="40">&nbsp;
					</td>
					<td align="center">
						<br>
					</td>
				</tr>
			</table>
		</form>
	</body>
</HTML>
