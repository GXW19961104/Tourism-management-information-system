<%@ Register TagPrefix="uc1" TagName="thead" Src="thead.ascx" %>
<%@ Page Language="C#" AutoEventWireup="false" CodeFile="default.aspx.cs" Inherits="_default" %>
<%@ Register TagPrefix="uc1" TagName="tfoot" Src="tfoot.ascx" %>
<!DOCTYPE html>
<html>
<head>
<title>Register</title>
</head>
	
<body>
    <uc1:thead id="thead1" runat="server"></uc1:thead>
	<div class="breadcrumbs">
		<div class="container">
			<ol class="breadcrumb breadcrumb1 animated wow slideInLeft" >
				<li><a href="index.html"><span class="glyphicon glyphicon-home" aria-hidden="true"></span>首页</a></li>
				<li class="active">注册</li>
			</ol>
		</div>
	</div>
<!-- //breadcrumbs -->
<!-- register -->
	<div class="register">
		<div class="container">
			<h3 class="animated wow zoomIn" >注册</h3>
			<p class="est animated wow zoomIn" >Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia 
				deserunt mollit anim id est laborum.</p>
			<div class="login-form-grids">
				<h5 class="animated wow slideInUp">基本信息</h5>
				<form class="animated wow slideInUp" >
					<input type="text" placeholder="First Name..." required=" " >
					<input type="text" placeholder="Last Name..." required=" " >
				</form>
				<div class="register-check-box animated wow slideInUp" >
					<div class="check">
						<label class="checkbox"><input type="checkbox" name="checkbox"><i> </i>Subscribe to Newsletter</label>
					</div>
				</div>
				<h6 class="animated wow slideInUp" >Login information</h6>
				<form class="animated wow slideInUp" >
					<input type="email" placeholder="Email Address" required=" " >
					<input type="password" placeholder="Password" required=" " >
					<input type="password" placeholder="Password Confirmation" required=" " >
					<div class="register-check-box">
						<div class="check">
						  <label class="checkbox"><input type="checkbox" name="checkbox">
						  <i> </i>我接受提出的条款</label>
						</div>
					</div>
					<input type="submit" value="注册">
				</form>
			</div>
			<div class="register-home animated wow slideInUp" >
				<a href="index.html">首页</a>
			</div>
		</div>
	</div>

</body>
</html>