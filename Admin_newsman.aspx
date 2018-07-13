<%@ Page language="c#" Inherits="GROUP.travel.Admin_newsman" CodeFile="Admin_newsman.aspx.cs" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>Admin_newsman</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<link rel="stylesheet" type="text/css" href="css/Admin_STYLE.CSS">
	</HEAD>
	<body>
		<form id="Form1" method="post" runat="server">
			<FONT face="ËÎÌå" color="white">
		<asp:GridView id="DataGrid2" runat="server" Width="704px" 
		AutoGenerateColumns="False" BorderWidth="0"	Height="160px">
			<Columns>
				<asp:TemplateField>
					<ItemTemplate>
						<TABLE cellSpacing="1" cellPadding="3" width="98%" border="0">
							<TR>
								<TD class="tdbg">¡¤<A href='kshownews.aspx?id=<%# Eval("ID")%>' target=_blank>
										<%# Eval("newstitle")%>
										... </A>
								</TD>
								<TD align="right" width="100" class="tdbg">[<%# Eval( "newsclass")%>]</TD>
								<TD align="right" width="50" class="tdbg">[<%# Eval( "newsclick")%>]</TD>
								<TD align="right" width="170" class="tdbg"><%# Eval("addtime")%></TD>
								<TD align="right" width="30" class="tdbg"><A href='Admin_newsdel.aspx?newsid=<%# Eval("ID")%>'>É¾³ý</A></TD>
							</TR>
						</TABLE>
					</ItemTemplate>
				</asp:TemplateField>
			</Columns>
		</asp:GridView>
				</FONT>
		</form>
	</body>
</HTML>
