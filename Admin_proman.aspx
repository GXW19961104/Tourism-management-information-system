<%@ Page language="c#" Inherits="GROUP.travel.Admin_proman" CodeFile="Admin_proman.aspx.cs" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>Admin_proman</title>
		<link rel="stylesheet" type="text/css" href="css/Admin_STYLE.CSS">
	</HEAD>
	<body>
	<form id="Form1" method="post" runat="server">
			<FONT face="宋体">
	<asp:GridView id="GridView1" runat="server" Width="100%" 
    AutoGenerateColumns="False" BorderColor="#E7E7FF" DataKeyNames="ID"
		BorderStyle="None" BorderWidth="1px" BackColor="White" CellPadding="3" 
    GridLines="Horizontal" onrowdeleting="GridView1_RowDeleting" 
    onrowcancelingedit="GridView1_RowCancelingEdit" 
    onrowediting="GridView1_RowEditing" onrowupdating="GridView1_RowUpdating" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
		<FooterStyle ForeColor="#4A3C8C" BackColor="#B5C7DE"></FooterStyle>
		<SelectedRowStyle Font-Bold="True" ForeColor="#F7F7F7" BackColor="#738A9C"></SelectedRowStyle>
		<AlternatingRowStyle BackColor="#F7F7F7"></AlternatingRowStyle>
		<RowStyle ForeColor="#4A3C8C" BackColor="#E7E7FF"></RowStyle>
		<HeaderStyle Font-Bold="True" ForeColor="Red" BackColor="#4A3C8C"></HeaderStyle>
		<Columns>
			<asp:BoundField  DataField="ID" ReadOnly="True"></asp:BoundField>
			<asp:BoundField DataField="productname" HeaderText="产品名称"></asp:BoundField>
			<asp:BoundField DataField="productprice" HeaderText="产品价格"></asp:BoundField>
			<asp:BoundField DataField="productpic" HeaderText="产品图片"></asp:BoundField>
			<asp:BoundField DataField="productclass" ReadOnly="True" HeaderText="产品类别"></asp:BoundField>
			<asp:CommandField ShowEditButton="True" />
			<asp:ButtonField Text="删除"  CommandName="Delete"></asp:ButtonField>
		</Columns>
		<PagerSettings Mode="Numeric" />
	</asp:GridView>
				</FONT>
		</form>
	</body>
</HTML>
