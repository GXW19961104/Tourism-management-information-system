<%@ Page language="c#" Inherits="GROUP.travel.Admin_Index_Left" CodeFile="Admin_Index_Left.aspx.cs" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>Admin_Index_Left</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<style type="text/css"> BODY { SCROLLBAR-FACE-COLOR: #cccccc; FONT-SIZE: 9pt; BACKGROUND: #555555; MARGIN: 0px; SCROLLBAR-HIGHLIGHT-COLOR: #cccccc; SCROLLBAR-SHADOW-COLOR: #cccccc; COLOR: #555555; SCROLLBAR-3DLIGHT-COLOR: #cccccc; SCROLLBAR-ARROW-COLOR: #555555; SCROLLBAR-TRACK-COLOR: #555555; FONT-FAMILY: Verdana, Arial, sans-serif, ����; SCROLLBAR-DARKSHADOW-COLOR: #cccccc; TEXT-DECORATION: none } TABLE { BORDER-RIGHT: 0px; BORDER-TOP: 0px; BORDER-LEFT: 0px; BORDER-BOTTOM: 0px } TD { FONT-WEIGHT: normal; FONT-SIZE: 12px; LINE-HEIGHT: normal; FONT-STYLE: normal; FONT-VARIANT: normal } IMG { BORDER-RIGHT: 0px; BORDER-TOP: 0px; VERTICAL-ALIGN: bottom; BORDER-LEFT: 0px; BORDER-BOTTOM: 0px } A { FONT-WEIGHT: normal; FONT-SIZE: 12px; COLOR: #555555; LINE-HEIGHT: normal; FONT-STYLE: normal; FONT-VARIANT: normal; TEXT-DECORATION: none } A:hover { COLOR: #ff6600; TEXT-DECORATION: underline } .sec_menu { BORDER-RIGHT: white 1px solid; BACKGROUND: #eeeeee; OVERFLOW: hidden; BORDER-LEFT: white 1px solid; BORDER-BOTTOM: white 1px solid } .menu_title { } .menu_title SPAN { FONT-WEIGHT: bold; LEFT: 8px; COLOR: #555555; POSITION: relative; TOP: 2px } .menu_title2 { } .menu_title2 SPAN { FONT-WEIGHT: bold; LEFT: 8px; COLOR: #ff6600; POSITION: relative; TOP: 2px } </style>
		<SCRIPT language="javascript1.2">
function showsubmenu(sid)
{
whichEl = eval("submenu" + sid);
if (whichEl.style.display == "none")
{
eval("submenu" + sid + ".style.display=\"\";");
}
else
{
eval("submenu" + sid + ".style.display=\"none\";");
}
}
		</SCRIPT>
	</HEAD>
	<BODY leftmargin="0" topmargin="0" marginheight="0" marginwidth="0">
		<form id="Form1" method="post" runat="server">
			<FONT face="����"></FONT>
			<table width="158" border="0" align="center" cellpadding="0" cellspacing="0">
				<tr>
					<td valign="top"><FONT face="����" color="#ff3366" size="5">��ҵ��̨����</FONT>
					</td>
				</tr>
			</table>
			<table cellpadding="0" cellspacing="0" width="158" align="center">
				<tr>
					<td height="25" class="menu_title" onmouseover="this.className='menu_title2';" onmouseout="this.className='menu_title';"
						background="images/title_bg_quit.gif" id="menuTitle0">
						<span><b>������Ϣ</b> | <a href="contraller.aspx?cname=adminout" target="_parent">�˳�</a></span>
					</td>
				</tr>
				<tr>
					<td id='submenu0'>
						<div class="sec_menu" style="WIDTH:158px">
							<table cellpadding="0" cellspacing="0" align="center" width="130">
								<tr>
									<td height="20">�û�����
										<asp:Label id="Label1" runat="server">Label</asp:Label></td>
								</tr>
								<tr>
									<td height="20">Ȩ&nbsp;&nbsp;�ޣ�
										<asp:Label id="Label2" runat="server">Label</asp:Label></td>
								</tr>
							</table>
						</div>
						<div style="WIDTH:158px">
							<table cellpadding="0" cellspacing="0" align="center" width="130">
								<tr>
									<td height="20"></td>
								</tr>
							</table>
						</div>
					</td>
				</tr>
			</table>
			<table cellpadding="0" cellspacing="0" width="158" align="center">
				<tr>
					<td height="25" class="menu_title" onmouseover="this.className='menu_title2';" onmouseout="this.className='menu_title';"
						background="images/Admin_left_2.gif" id="menuTitle1" onclick="showsubmenu(1)" style="CURSOR:hand">
						<span>���¹���</span>
					</td>
				</tr>
				<tr>
					<td id='submenu1'>
						<div class="sec_menu" style="WIDTH:158px">
							<table cellpadding="0" cellspacing="0" align="center" width="130">
								<tr>
									<td height="20"><a href="Admin_addnews.aspx" target="main">�������</a><FONT face="����"> |
											<a href="Admin_newsman.aspx" target="main">����</a></FONT></td>
								</tr>
							</table>
						</div>
						<div style="WIDTH:158px">
							<table cellpadding="0" cellspacing="0" align="center" width="130">
								<tr>
									<td height="20"></td>
								</tr>
							</table>
						</div>
					</td>
				</tr>
			</table>
			<table cellpadding="0" cellspacing="0" width="158" align="center">
				<tr>
					<td height="25" class="menu_title" onmouseover="this.className='menu_title2';" onmouseout="this.className='menu_title';"
						background="images/Admin_left_2.gif" id="menuTitle31" onclick="showsubmenu(31)"
						style="CURSOR:hand">
						<span>��Ʒ����</span>
					</td>
				</tr>
				<tr>
					<td id='submenu31'>
						<div class="sec_menu" style="WIDTH:158px">
							<table cellpadding="0" cellspacing="0" align="center" width="130">
								<tr>
									<td height="20"><a href="Admin_addpro.aspx" target="main">��Ʒ���</a> | <a href="Admin_proman.aspx" target="main">
											����</a>
									</td>
								</tr>
							</table>
						</div>
						<div style="WIDTH:158px">
							<table cellpadding="0" cellspacing="0" align="center" width="130">
								<tr>
									<td height="20"><FONT face="����"></FONT></td>
								</tr>
							</table>
						</div>
					</td>
				</tr>
			</table>
			<table cellpadding="0" cellspacing="0" width="158" align="center">
				<tr>
					<td height="25" class="menu_title" onmouseover="this.className='menu_title2';" onmouseout="this.className='menu_title';"
						background="images/Admin_left_2.gif" id="menuTitle4" onclick="showsubmenu(4)" style="CURSOR:hand">
						<span>�û�����</span>
					</td>
				</tr>
				<tr>
					<td style="DISPLAY:none" id='submenu4'>
						<div class="sec_menu" style="WIDTH:158px">
							<table cellpadding="0" cellspacing="0" align="center" width="130">
								<tr>
									<td height="20"><a href="Admin_userman.aspx" target="main">�û�����</a></td>
								</tr>
							</table>
						</div>
						<div style="WIDTH:158px">
							<table cellpadding="0" cellspacing="0" align="center" width="130">
								<tr>
									<td height="20"></td>
								</tr>
							</table>
						</div>
					</td>
				</tr>
			</table>
			<table cellpadding="0" cellspacing="0" width="158" align="center">
				<tr>
					<td height="25" class="menu_title" onmouseover="this.className='menu_title2';" onmouseout="this.className='menu_title';"
						background="images/Admin_left_2.gif" id="menuTitle8" onclick="showsubmenu(8)" style="CURSOR:hand">
						<span>��������</span>
					</td>
				</tr>
				<tr>
					<td style="DISPLAY:none" id='submenu8'>
						<div class="sec_menu" style="WIDTH:158px">
							<table cellpadding="0" cellspacing="0" align="center" width="130">
								<tr>
									<td height="20"><a href="Admin_orderlistd.aspx" target="main">�Ѵ�����</a></td>
								</tr>
								<tr>
									<td height="20"><a href="Admin_orderlistnd.aspx" target="main">δ������</a></td>
								</tr>
							</table>
						</div>
						<div style="WIDTH:158px">
							<table cellpadding="0" cellspacing="0" align="center" width="130">
								<tr>
									<td height="20"></td>
								</tr>
							</table>
						</div>
					</td>
				</tr>
			</table>
			<table cellpadding="0" cellspacing="0" width="158" align="center">
				<tr>
					<td><FONT face="����"></FONT>
						<div class="sec_menu" style="WIDTH:158px"><FONT face="����"></FONT>
						</div>
					</td>
				</tr>
			</table>
		</form>
	</BODY>
</HTML>
