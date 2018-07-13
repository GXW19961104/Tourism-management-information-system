<%@ Register TagPrefix="uc1" TagName="thead" Src="thead.ascx" %>
<%@ Register TagPrefix="uc1" TagName="tfoot" Src="tfoot.ascx" %>
<%@ Page language="c#" Inherits="GROUP.travel.product" CodeFile="product.aspx.cs" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>product</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<LINK href="css/content.css" type="text/css" rel="stylesheet">
		
	</HEAD>
	<body >
         <uc1:thead id="thead1" runat="server"></uc1:thead>
        <div class="container">
			<h2 class="animated wow zoomIn" >产品</h2>
            </div>
		<form id="Form1" method="post" runat="server">
			
			<table cellSpacing="0" cellPadding="0" width="732" align="center" bgColor="#ffffff" border="0">
				<tr>
					<td vAlign="top" colSpan="2">
						<table height="120" cellSpacing="10" cellPadding="5" width="550" bgColor="#000000" border="0"align="center">
							
							<tr>
								<td bgColor="#ffffff"><FONT face="宋体"><asp:datalist id="DataList1" runat="server" Width="532px" RepeatColumns="2" RepeatDirection="Horizontal">
											<ItemTemplate>
												<table width="99%" border="0" cellspacing="10" cellpadding="10"class="timetable_sub">
													<tr>
														<td width="110" rowspan="2" align="center" valign="middle"><a href='kshowpro.aspx?proid=<%# DataBinder.Eval(Container.DataItem, "ID")%> '><img src='productpic/<%# DataBinder.Eval(Container.DataItem, "productpic")%>' width="100" height="60" border="0" /></a></td>
														<td height="15" valign="top"><a href='productpro.aspx?proid=<%# DataBinder.Eval(Container.DataItem, "ID")%> '><strong><%# DataBinder.Eval(Container.DataItem, "productname")%></strong></a></td>
													</tr>
													<tr>
														<td>价格：￥<%# DataBinder.Eval(Container.DataItem, "Productprice")%>
															元<br />
															分类： <a href='kprolist.aspx?proclassid=<%# DataBinder.Eval(Container.DataItem, "productclass")%>'>
																<%# DataBinder.Eval(Container.DataItem, "productclass")%>
															</a>
														</td>
													</tr>
												</table>
											</ItemTemplate>
										</asp:datalist></FONT></td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td width="193" height="4">&nbsp;</td>
					<td width="535">&nbsp;</td>
					<td width="4">&nbsp;</td>
				</tr>
				<tr>
					<td colSpan="3" height="42"><FONT face="宋体"></FONT>
					</td>
				</tr>
				<tr>
					<td colSpan="3">&nbsp;</td>
				</tr>
		  </table>
	</form>
        <uc1:tfoot id="tfoot1" runat="server"></uc1:tfoot>
	</body>
</HTML>