<%@ Register TagPrefix="uc1" TagName="thead" Src="thead.ascx" %>
<%@ Page language="c#" Inherits="GROUP.travel.news" CodeFile="news.aspx.cs" %>
<%@ Register TagPrefix="uc1" TagName="tfoot" Src="tfoot.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>knewslist</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<link href="css/content.css" rel="stylesheet" type="text/css">
		<script language="JavaScript1.2">
function high(which2){
theobject=which2
which2.style.filter="alpha(opacity=40);";
highlighting=setInterval("highlightit(theobject)",50)

}
function low(which2){
clearInterval(highlighting)
which2.style.filter="Gray alpha(opacity=40);";
which2.filters.alpha.opacity=40
}
function highlightit(cur2){
if (cur2.filters.alpha.opacity<100)
cur2.filters.alpha.opacity+=5
else if (window.highlighting)
clearInterval(highlighting)
}

		</script>
	</HEAD>
	<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
		<form id="Form1" method="post" runat="server">
             <uc1:thead id="thead1" runat="server"></uc1:thead>
			<center> <h2 class="animated wow zoomIn" >旅游攻略</h2></center>
			<table width="594" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#ffffff">

				<tr bgcolor="#000000">
				
					<td width="594" colspan="2" valign="top"><table width="583" height="120" border="0" cellpadding="5" cellspacing="1" bgcolor="#000000"class="timetable_sub">
				
							<tr>
								<td width="571" bgcolor="#ffffff">
	            <asp:GridView id="GridView2" runat="server" BorderWidth="0" Height="160px" Width="536px" AutoGenerateColumns="False">
		            <Columns>
			            <asp:TemplateField>
				            <HeaderTemplate>
				            </HeaderTemplate>
				            <ItemTemplate>
					            <table width="98%" border="0" cellspacing="1" cellpadding="3">
						            <tr>
							            <td>·<A href='newspro.aspx?id=<%# Eval("ID")%>'>
									            <%# Eval( "newstitle")%>
									            ... </A>
							            </td>
							            <td width="100" align="right">[<%# Eval("newsclass")%>]</td>
							            <td width="50" align="right">[<%# Eval( "newsclick")%>]</td>
							            <td width="170" align="right"><%# Eval( "addtime")%></td>
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
	
				</table>
             <uc1:tfoot id="tfoot1" runat="server"></uc1:tfoot>
		</form>
	</body>
</HTML>