<%@ Register TagPrefix="uc1" TagName="thead" Src="thead.ascx" %>
<%@ Page language="c#" Inherits="GROUP.travel.newspro" CodeFile="newspro.aspx.cs" %>
<%@ Register TagPrefix="uc1" TagName="tfoot" Src="tfoot.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>kshownews</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<link href="css/content.css" rel="stylesheet" type="text/css">
	</HEAD>
	<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
		<form id="Form1" method="post" runat="server">
              <uc1:thead id="thead1" runat="server"></uc1:thead>
			<table width="562" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#ffffff">
				<tr>
					<td height="176" colspan="2" valign="top"><table width="550" height="120" border="0" cellpadding="5" cellspacing="1" bgcolor="#000000">
							<tr>
								<td bgcolor="#ffffff">
									<asp:Repeater id="Repeater1" runat="server">
										<ItemTemplate>
											<table width="530" border="0" align="center" cellpadding="0" cellspacing="3">
												<tr>
													<td align="center">&nbsp;</td>
												</tr>
												<tr>
													<td align="center"><span class="newstitle"><%# DataBinder.Eval(Container.DataItem, "newstitle")%></span>&nbsp;</td>
												</tr>
												<tr>
													<td height="49" align="center">点击率：<%# DataBinder.Eval(Container.DataItem, "newsclick")%>/发表时间：<%# DataBinder.Eval(Container.DataItem, "addtime")%>【<a href='javascript:window.print()'>打印此页</a>】&nbsp;【<a href='javascript:history.back()'>返回</a>】</td>
												</tr>
												<tr>
													<td height="86">&nbsp;&nbsp;&nbsp;<%# DataBinder.Eval(Container.DataItem, "newscontent")%></td>
												</tr>
											</table>
										</ItemTemplate>
									</asp:Repeater></td>
							</tr>
						</table>
				  </td>
				</tr>
				<tr>
					<td width="8" height="4">&nbsp;</td>
					<td width="550">&nbsp;</td>
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
            <uc1:tfoot id="tfoot1" runat="server"></uc1:tfoot>
		</form>
	</body>
</HTML>