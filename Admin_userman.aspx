<%@ Page language="c#" Inherits="GROUP.travel.Admin_userman" CodeFile="Admin_userman.aspx.cs" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>Admin_userman</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<link rel="stylesheet" type="text/css" href="css/Admin_STYLE.CSS">
	</HEAD>
	<body>
		<form id="Form1" method="post" runat="server">
			<FONT face="����">
	<asp:GridView id="GridView1" runat="server" Width="100%" 
    AutoGenerateColumns="False" BorderColor="#E7E7FF"
		BorderStyle="None" BorderWidth="1px" BackColor="White" DataKeyNames="ID" 
    CellPadding="3" GridLines="Horizontal" 
    onrowcancelingedit="GridView1_RowCancelingEdit" 
    onrowdeleting="GridView1_RowDeleting" onrowediting="GridView1_RowEditing" 
    onrowupdating="GridView1_RowUpdating">
		<SelectedRowStyle Font-Bold="True" ForeColor="#F7F7F7" BackColor="#738A9C"></SelectedRowStyle>
		<AlternatingRowStyle BackColor="#F7F7F7"></AlternatingRowStyle>
		<RowStyle ForeColor="#4A3C8C" BackColor="#E7E7FF"></RowStyle>
		<HeaderStyle Font-Bold="True" ForeColor="Red" BackColor="#4A3C8C"></HeaderStyle>
		<FooterStyle ForeColor="#4A3C8C" BackColor="#B5C7DE"></FooterStyle>
		<Columns>
			<asp:BoundField  DataField="ID" ReadOnly="True" HeaderText="ID"></asp:BoundField>
			<asp:BoundField DataField="username" HeaderText="�û���"></asp:BoundField>
			<asp:BoundField DataField="userpassword" HeaderText="����"></asp:BoundField>
			<asp:BoundField DataField="userrname" ReadOnly="True" HeaderText="����"></asp:BoundField>
			<asp:BoundField DataField="usertel" ReadOnly="True" HeaderText="�绰"></asp:BoundField>
			<asp:BoundField DataField="useraddr" ReadOnly="True" HeaderText="��ַ"></asp:BoundField>
			<asp:BoundField DataField="userclass" HeaderText="Ȩ��"></asp:BoundField>
			<asp:CommandField ShowEditButton="True" />
			<asp:ButtonField Text="ɾ��" CommandName="Delete"></asp:ButtonField>
		</Columns>
		<PagerSettings Mode="Numeric" />
	</asp:GridView>
				</FONT>
		</form>
	</body>
</HTML>
