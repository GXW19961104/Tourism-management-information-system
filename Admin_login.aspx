<%@ Page language="c#" Inherits="GROUP.travel.Admin_login" CodeFile="Admin_login.aspx.cs" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>企业网站管理系统</title>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body>
		<form id="Form1" method="post" runat="server">
			<br>
			<br>
			<TABLE id="Table1" style="WIDTH: 760px; HEIGHT: 72px" cellSpacing="1" cellPadding="1" width="760"
				border="0">
				<TR>
					<TD style="FONT-WEIGHT: bold; FONT-SIZE: 32pt; HEIGHT: 136px" align="center" colSpan="3"></TD>
				</TR>
				<TR>
					<TD style="FONT-WEIGHT: bold; FONT-SIZE: 32pt" align="center" colSpan="3">企业网站管理系统</TD>
				</TR>
				<TR>
					<TD style="WIDTH: 265px"></TD>
					<TD style="WIDTH: 60px">用户：</TD>
					<TD>
						<asp:TextBox id="adminname" runat="server" Width="177px" Height="32px"></asp:TextBox></TD>
				</TR>
				<TR>
					<TD style="WIDTH: 265px"></TD>
					<TD style="WIDTH: 60px">密码：</TD>
					<TD>
						<asp:TextBox id="adminpass" runat="server" TextMode="Password" Height="32px" Width="176px"></asp:TextBox></TD>
				</TR>
				<TR>
					<TD style="WIDTH: 265px"></TD>
					<TD style="WIDTH: 60px"></TD>
					<TD>
						<asp:Button id="Button1" runat="server" ForeColor="White" BorderStyle="Dotted" BackColor="#8080FF"
							Text="登录" onclick="Button1_Click"></asp:Button></TD>
				</TR>
			</TABLE>
			<br>
			<div align="center"><br>
				网站版权所有</div>
			<br>
		</form>
	</body>
</HTML>
