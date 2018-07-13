<%@ Register TagPrefix="uc1" TagName="thead" Src="thead.ascx" %>
<%@ Register TagPrefix="uc1" TagName="tfoot" Src="tfoot.ascx" %>
<%@ Page language="c#" Inherits="GROUP.travel.productpro" CodeFile="productpro.aspx.cs" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>产品信息</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<link href="css/content.css" rel="stylesheet" type="text/css">
	    <style type="text/css">
            .auto-style1 {
                width: 1px;
            }
        </style>
	</HEAD>
	<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
        <uc1:thead id="thead1" runat="server"></uc1:thead>
		<form id="Form1" method="post" runat="server">
			
			<table width="554" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#ffffff" >

				<tr>

					<td colspan="2" valign="top"><table width="550" height="120" border="0" cellpadding="5" cellspacing="1" bgcolor="#000000">
							<tr>
								<td height="23" bgcolor="#ffffff"><strong><font color=" #000000">产品信息</font></strong></td>
							</tr>
							<tr>
								<td bgcolor="#ffffff">
	<asp:GridView id="GridView2" runat="server" BorderWidth="0" Height="160px" Width="536px" AutoGenerateColumns="False">
		<Columns>
			<asp:TemplateField>
				<ItemTemplate>
					<table width="530" border="0" align="center" cellpadding="5" cellspacing="1">
						<tr>
							<td colspan="2" align="center"><%# Eval("productname")%></td>
						</tr>
						<tr>
							<td colspan="2" align="center"><img src='productpic/<%# Eval("productpic")%>' width="400" height="300" /></td>
						</tr>
						<tr>
							<td colspan="2">简介：<br />
								<%# Eval("productinfo")%>
							</td>
						</tr>
						<tr>
							<td>价格：<%# Eval("Productprice")%></td>
							<td><a href='shopcarpro.aspx?oproid=<%# Eval("ID")%>'>加入购物车&gt;&gt;</a></td>
						</tr>
					</table>
				</ItemTemplate>
			</asp:TemplateField>
		</Columns>
	</asp:GridView>
							  </td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td width="4" height="4" class="auto-style1">&nbsp;</td>
					<td width="546">&nbsp;</td>
					<td width="4">&nbsp;</td>
				</tr>
				<tr>
					<td height="42" colspan="3">
					</td>
				</tr>
				<tr>
					<td colspan="3">&nbsp;</td>
				</tr>
		  </table>
		</form>
        <uc1:tfoot id="tfoot1" runat="server"></uc1:tfoot>
	</body>
</HTML>

