<%@ Register TagPrefix="uc1" TagName="thead" Src="thead.ascx" %>
<%@ Page language="c#" Inherits="GROUP.travel.register" CodeFile="register.aspx.cs" %>
<%@ Register TagPrefix="uc1" TagName="tfoot" Src="tfoot.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>userreg</title>
	</HEAD>
    <body>
    <uc1:thead id="thead1" runat="server"></uc1:thead>
    <form id="Form1" method="post" runat="server">
    <!-- register -->
	<div class="register">
		<div class="container">
			<h3 class="animated wow zoomIn" data-wow-delay=".5s">注册</h3>
			<p class="est animated wow zoomIn" data-wow-delay=".5s">Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia 
				deserunt mollit anim id est laborum.</p>
			<div class="login-form-grids">
				<h6 class="animated wow slideInUp" data-wow-delay=".5s">基本信息</h6>
				<form class="animated wow slideInUp" data-wow-delay=".5s">
					<asp:textbox id="username" runat="server" CssClass="inputlog"></asp:textbox>
                    <asp:textbox id="password" runat="server" TextMode="Password" CssClass="inputlog"></asp:textbox>              
                    <asp:textbox id="password2" runat="server" TextMode="Password" CssClass="inputlog"></asp:textbox>
					<div class="register-check-box">
						<div class="check">
						  <label class="checkbox"><input type="checkbox" name="checkbox">
						  <i> </i>我接受提出的条款</label>
						</div>
					</div>
					 <asp:button id="Button1" runat="server" Width="120px" Text="注册" CssClass="inputlog" onclick="Button1_Click"></asp:button>
				</form>
			</div>
			<div class="register-home animated wow slideInUp" data-wow-delay=".5s">
				<a href="index.aspx">首页</a>
			</div>
		</div>
	</div>
<!-- //register -->
</form>
    <uc1:tfoot id="tfoot1" runat="server"></uc1:tfoot>
   </body>
</HTML>
