<%@ Register TagPrefix="uc1" TagName="thead" Src="thead.ascx" %>
<%@ Register TagPrefix="uc1" TagName="tfoot" Src="tfoot.ascx" %>
<%@ Page language="c#" Inherits="GROUP.travel.shopcarpro" CodeFile="shopcarpro.aspx.cs" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>

</head>
<body>
    <form id="form1" runat="server">
          <uc1:thead id="thead1" runat="server"></uc1:thead>
			<table width="780" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#ffffff">
				<tr>
			
					<td colspan="2" valign="top"><table width="550" height="120" border="0" cellpadding="5" cellspacing="1" bgcolor="#000000">
							<tr>
								<td height="23" bgcolor="#cc3399"><strong><font color="#ffffff">::产品信息::</font></strong></td>
							</tr>
							<tr>
								<td bgcolor="#ffffff"><table width="530" border="0" cellspacing="1" cellpadding="2">
										<tr>
											<td><table width="520" border="0" cellspacing="1" cellpadding="5" style="WIDTH: 520px; HEIGHT: 126px">
													<tr>
														<td colspan="2" align="center"><strong><font color="#cc3399">订购信息</font></strong></td>
													</tr>
													<tr>
														<td width="131" align="right">产品名称：</td>
														<td width="522">&nbsp;
															<asp:Label id="Label1" runat="server">Label</asp:Label></td>
													</tr>
													<tr>
														<td align="right">订购数量：</td>
														<td>&nbsp;
															<asp:TextBox id="TextBox1" runat="server" Width="45px">1</asp:TextBox><FONT face="宋体">件</FONT></td>
													</tr>
													<tr>
														<td align="right">订购价格：</td>
														<td>
															<asp:Label id="Label2" runat="server">Label</asp:Label>
															元/件</td>
													</tr>
													<tr>
														<td align="right">&nbsp;</td>
														<td>&nbsp;</td>
													</tr>
												</table>
											</td>
										</tr>
										<tr>
											<td>
	<asp:GridView id="GridView1" runat="server"
	 AutoGenerateColumns="False" Width="520px">
		<Columns>
			<asp:TemplateField>
				<ItemTemplate>
					<table width="90%" border="0" cellspacing="1" cellpadding="5">
						<tr>
							<td height="25" colspan="2" align="center"><strong><font color="#cc3399">用户信息</font></strong></td>
						</tr>
						<tr>
							<td width="120" align="right">真实姓名：</td>
							<td width="407"><%# Eval( "username")%></td>
						</tr>
						<tr>
							<td align="right">联系电话：</td>
							<td><%# Eval("usertel")%></td>
						</tr>
						<tr>
							<td align="right">联系地址：</td>
							<td><%# Eval("useraddr")%></td>
						</tr>
						<tr>
							<td colspan="2">请确认您上述信息的正确性，否则可能出现您无法收到物品的情况！如果上述有错误，请点击<a href="person.aspx"><strong><font color="#cc3399">此处</font></strong></a>修改。</td>
						</tr>
					</table>
				</ItemTemplate>
			</asp:TemplateField>
		</Columns>
	</asp:GridView>
												</td>
										</tr>
										<tr>
											<td align="center">&nbsp;
												<asp:Button id="Button1" runat="server" Text="提交订单" onclick="Button1_Click" OnClientClick="return true"></asp:Button></td>
										</tr>
									</table>
								</td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td height="4">&nbsp;</td>
					<td width="285">&nbsp;</td>
					<td width="281">
                        
                    </td>
				</tr>
				<tr>
					<td height="42" colspan="3">
					</td>
				</tr>
				<tr>
					<td colspan="3">&nbsp;</td>
				</tr>
			</table>

          <uc1:tfoot id="tfoot1" runat="server"></uc1:tfoot>
    </form>

</body>
</html>