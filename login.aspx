<%@ Register TagPrefix="uc1" TagName="thead" Src="thead.ascx" %>
<%@ Page language="c#" Inherits="GROUP.travel.login" CodeFile="login.aspx.cs" %>
<%@ Register TagPrefix="uc1" TagName="tfoot" Src="tfoot.ascx" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>旅游信息管理网站</title>
</head>
<body>
    <uc1:thead id="thead1" runat="server"></uc1:thead>
    <div class="login">
		<div class="container">
			<h3 class="animated wow zoomIn" >登录</h3>
			<p class="est animated wow zoomIn" >Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia 
				deserunt mollit anim id est laborum.</p>
			<div class="login-form-grids animated wow slideInUp" >
				<form id="form1" runat="server">
					<asp:TextBox id="username" runat="server" CssClass="inputlog" ToolTipText="用户名"></asp:TextBox>
					<asp:TextBox id="userpass" runat="server" TextMode="Password" ToolTipText="密码"></asp:TextBox>
					<div class="forgot">
						<a href="#">忘记密码?</a>
					</div>
					<asp:Button id="Button1" runat="server" OnClick="Button1_Click" Text="登录" />
				</form>
			</div>
			<h4 class="animated wow slideInUp" >新用户</h4>
			<p class="animated wow slideInUp" ><a href="register.html">注册</a> 或返回 <a href="index.html">首页<span class="glyphicon glyphicon-menu-right" aria-hidden="true"></span></a></p>
		</div>
	</div>
    <uc1:tfoot id="tfoot1" runat="server"></uc1:tfoot>
</body>
</html>
