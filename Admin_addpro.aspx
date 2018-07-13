<%@ Page language="c#" Inherits="GROUP.travel.Admin_addpro" CodeFile="Admin_addpro.aspx.cs" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>Admin_addpro</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<link rel="stylesheet" type="text/css" href="css/Admin_STYLE.CSS">
	</HEAD>
	<body>
		<form id="Form1" method="post" runat="server">
			<FONT face="宋体">
				<asp:Label id="Label1" style="Z-INDEX: 101; LEFT: 72px; POSITION: absolute; TOP: 32px" runat="server">产品名称：</asp:Label>
				<asp:Label id="Label2" style="Z-INDEX: 102; LEFT: 72px; POSITION: absolute; TOP: 56px" runat="server">产品价格：</asp:Label>
				<asp:Label id="Label3" style="Z-INDEX: 103; LEFT: 72px; POSITION: absolute; TOP: 80px" runat="server">产品图片：</asp:Label>
				<asp:TextBox id="TextBox1" style="Z-INDEX: 104; LEFT: 152px; POSITION: absolute; TOP: 32px" runat="server"></asp:TextBox>
				<asp:TextBox id="TextBox2" style="Z-INDEX: 105; LEFT: 152px; POSITION: absolute; TOP: 56px" runat="server"></asp:TextBox>
				<asp:TextBox id="TextBox3" style="Z-INDEX: 106; LEFT: 152px; POSITION: absolute; TOP: 80px" runat="server">exp.jpg</asp:TextBox>
				<asp:TextBox id="TextBox5" style="Z-INDEX: 108; LEFT: 152px; POSITION: absolute; TOP: 128px"
					runat="server" TextMode="MultiLine" Height="120px" Width="312px"></asp:TextBox>
				<asp:Label id="Label4" style="Z-INDEX: 109; LEFT: 72px; POSITION: absolute; TOP: 104px" runat="server">产品分类：</asp:Label>
				<asp:Label id="Label5" style="Z-INDEX: 110; LEFT: 72px; POSITION: absolute; TOP: 128px" runat="server">产品介绍：</asp:Label>
				<asp:Button id="Button1" style="Z-INDEX: 111; LEFT: 152px; POSITION: absolute; TOP: 256px" runat="server"
					Width="136px" Text="添加产品" onclick="Button1_Click"></asp:Button>
				<asp:DropDownList id="DropDownList1" style="Z-INDEX: 112; LEFT: 152px; POSITION: absolute; TOP: 104px"
					runat="server" Width="136px"></asp:DropDownList></FONT>
		</form>
	</body>
</HTML>
