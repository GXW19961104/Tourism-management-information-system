<%@ Page language="c#" Inherits="GROUP.travel.Admin_orderlistd" CodeFile="Admin_orderlistd.aspx.cs" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>Admin_orderlistd</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<link rel="stylesheet" type="text/css" href="css/Admin_STYLE.CSS">
	</HEAD>
	<body>
		<form id="Form1" method="post" runat="server">
	<asp:GridView id="GridView1" runat="server" Width="100%" 
        AutoGenerateColumns="False" BorderColor="#E7E7FF"
		BorderStyle="None" BorderWidth="1px" BackColor="White" CellPadding="3" 
        GridLines="Horizontal" onrowcancelingedit="GridView1_RowCancelingEdit" 
        onrowdeleting="GridView1_RowDeleting" onrowediting="GridView1_RowEditing" 
        onrowupdating="GridView1_RowUpdating">
		<SelectedRowStyle Font-Bold="True" ForeColor="#F7F7F7" BackColor="#738A9C"></SelectedRowStyle>
		<AlternatingRowStyle BackColor="#F7F7F7"></AlternatingRowStyle>
		<RowStyle ForeColor="#4A3C8C" BackColor="#E7E7FF"></RowStyle>
		<HeaderStyle Font-Bold="True" ForeColor="Red" BackColor="#4A3C8C"></HeaderStyle>
		<FooterStyle ForeColor="#4A3C8C" BackColor="#B5C7DE"></FooterStyle>
		<Columns>
			<asp:BoundField Visible="False" DataField="ID" ReadOnly="True"></asp:BoundField>
			<asp:BoundField DataField="opid" ReadOnly="True" HeaderText="产品ID"></asp:BoundField>
			<asp:BoundField DataField="opnum" ReadOnly="True" HeaderText="订购数量"></asp:BoundField>
			<asp:BoundField DataField="ouser" ReadOnly="True" HeaderText="订购者"></asp:BoundField>
			<asp:BoundField DataField="otime" ReadOnly="True" HeaderText="订购时间"></asp:BoundField>
			<asp:BoundField DataField="isdeal" HeaderText="处理"></asp:BoundField>
			<asp:CommandField ShowEditButton="True" />
			<asp:ButtonField Text="删除" CommandName="Delete"></asp:ButtonField>
		</Columns>
		<PagerSettings Mode="Numeric" />
	</asp:GridView>&nbsp;
		</form>
	</body>
</HTML>
