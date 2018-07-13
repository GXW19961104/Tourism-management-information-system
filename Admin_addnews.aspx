<%@ Page language="c#" Inherits="GROUP.travel.Admin_addnews" CodeFile="Admin_addnews.aspx.cs" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>Admin_addnews</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<link rel="stylesheet" type="text/css" href="css/Admin_STYLE.CSS">
	</HEAD>
	<body>
		<form id="Form1" method="post" runat="server">
			<asp:TextBox id="newstitle" style="Z-INDEX: 107; LEFT: 152px; POSITION: absolute; TOP: 80px"
				runat="server" Width="288px"></asp:TextBox>
			<asp:TextBox id="newscon" style="Z-INDEX: 101; LEFT: 152px; POSITION: absolute; TOP: 144px" runat="server"
				Width="288px" TextMode="MultiLine" Height="160px"></asp:TextBox>
			<asp:Button id="Button1" style="Z-INDEX: 102; LEFT: 256px; POSITION: absolute; TOP: 328px" runat="server"
				Text="发布" onclick="Button1_Click"></asp:Button>
			<asp:Label id="Label1" style="Z-INDEX: 104; LEFT: 96px; POSITION: absolute; TOP: 80px" runat="server">标题</asp:Label>
			<asp:Label id="Label2" style="Z-INDEX: 105; LEFT: 96px; POSITION: absolute; TOP: 112px" runat="server">类别</asp:Label>
			<asp:Label id="Label3" style="Z-INDEX: 106; LEFT: 96px; POSITION: absolute; TOP: 144px" runat="server">内容</asp:Label>
			<asp:DropDownList id="newsclass" style="Z-INDEX: 108; LEFT: 152px; POSITION: absolute; TOP: 112px"
				runat="server"></asp:DropDownList>
		</form>
	</body>
</HTML>
