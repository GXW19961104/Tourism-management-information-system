<%@ Page language="c#" Inherits="GROUP.travel.Admin_orderlistnd" CodeFile="Admin_orderlistnd.aspx.cs" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>Admin_orderlistnd</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<link rel="stylesheet" type="text/css" href="css/Admin_STYLE.CSS">
	</HEAD>
	<body>
		<form id="Form1" method="post" runat="server">
			<FONT face="����">
	<asp:GridView id="GridView1" runat="server" CellPadding="4" 
    BackColor="White" BorderWidth="1px"
		BorderStyle="None" BorderColor="#CC9966" AutoGenerateColumns="False" Width="100%" 
    onrowcancelingedit="GridView1_RowCancelingEdit" 
    onrowdeleting="GridView1_RowDeleting" onrowediting="GridView1_RowEditing" 
    onrowupdating="GridView1_RowUpdating">
		<SelectedRowStyle Font-Bold="True" ForeColor="#663399" BackColor="#FFCC66"></SelectedRowStyle>
		<RowStyle ForeColor="#330099" BackColor="White"></RowStyle>
		<HeaderStyle Font-Bold="True" ForeColor="#FFFFCC" BackColor="#990000"></HeaderStyle>
		<FooterStyle ForeColor="#330099" BackColor="#FFFFCC"></FooterStyle>
		<Columns>
			<asp:BoundField Visible="False" DataField="ID" ReadOnly="True"></asp:BoundField>
			<asp:BoundField DataField="opid" ReadOnly="True" HeaderText="��ƷID"></asp:BoundField>
			<asp:BoundField DataField="opnum" ReadOnly="True" HeaderText="��������"></asp:BoundField>
			<asp:BoundField DataField="ouser" ReadOnly="True" HeaderText="������"></asp:BoundField>
			<asp:BoundField DataField="otime" ReadOnly="True" HeaderText="����ʱ��"></asp:BoundField>
			<asp:BoundField DataField="isdeal" HeaderText="����"></asp:BoundField>
			<asp:CommandField ShowEditButton="True" />
			<asp:ButtonField Text="ɾ��" CommandName="Delete"></asp:ButtonField>
		</Columns>
		<PagerSettings Mode="Numeric" />
	</asp:GridView></FONT>
		</form>
	</body>
</HTML>
