<%@ Page language="c#" Inherits="GROUP.travel.Admin_orderlist" CodeFile="Admin_orderlist.aspx.cs" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>Admin_orderlist</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<link rel="stylesheet" type="text/css" href="css/Admin_STYLE.CSS">
	</HEAD>
	<body>
		<form id="Form1" method="post" runat="server">
			<FONT face="����">
				<asp:DataGrid id="DataGrid1" runat="server" Width="100%" AutoGenerateColumns="False">
					<Columns>
						<asp:TemplateColumn>
							<HeaderTemplate>
								<table width="100%" border="0" cellspacing="1" cellpadding="2">
									<tr class="topbg">
										<td width="6%">���</td>
										<td width="35%">������Ʒ</td>
										<td width="13%" align="center">��������</td>
										<td width="15%" align="center">��������</td>
										<td width="15%" align="center">�����û�</td>
										<td width="8%" align="center">����</td>
										<td width="8%" align="center">ɾ��</td>
									</tr>
								</table>
							</HeaderTemplate>
							<ItemTemplate>
								<table width="100%" border="0" cellspacing="1" cellpadding="2">
									<tr>
										<td width="6%" class="tdbg">��</td>
										<td width="35%" class="tdbg"><%# DataBinder.Eval(Container.DataItem, "productname")%></td>
										<td width="13%" align="center" class="tdbg"><%# DataBinder.Eval(Container.DataItem, "opnum")%></td>
										<td width="15%" align="center" class="tdbg"><%# DataBinder.Eval(Container.DataItem, "otime")%></td>
										<td width="15%" align="center" class="tdbg"><%# DataBinder.Eval(Container.DataItem, "ouser")%></td>
										<td width="8%" align="center" class="tdbg">����</td>
										<td width="8%" align="center" class="tdbg">ɾ��</td>
									</tr>
								</table>
							</ItemTemplate>
						</asp:TemplateColumn>
					</Columns>
				</asp:DataGrid></FONT>
		</form>
	</body>
</HTML>
