<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="FlashViewerIntro.aspx.vb" Inherits="GrapeCity.ActiveReports.Samples.Web.Professional.FlashViewerIntro" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ActiveReports 11 Flash WebViewer Sample</title>
        <style type="text/css">
    html, body
	{
		background: #E5E5E5;
		height: 100%;
		margin: 0;
		font-family: Arial;
		font-size: 10pt;
	}

	#header
	{
		background: #152980;
		border-bottom: solid 4px #8963B7;
		height: 90px;
		width: 100%;
	}

	#header_content
	{
		color: white;
		position: relative;
		left: 50%;
		margin-left: -500px;
		width: 1000px;
		padding: 0 5px 0 5px;
	}

	#body_content
	{
		background: white;
		border: solid 1px black;
		width: 1000px;
		position: relative;
		height: 80%;
		left: 50%;
		margin-left: -512px;
		margin-top: 1em;
	}

	img
	{
		vertical-align: middle;
	}

	h1
	{
		font-size: 18pt;
	}

	.content_section
	{
		margin: 1em;
	}
	</style>
</head>
<body>
    <div id="header">
        <div id="header_content">
            <img src="images/Logo.png" alt="GrapeCity" />
        </div>
    </div>
        <div id="body_content">
        <div class="content_section">
            <h1>ActiveReports 11 Flash WebViewer</h1>
            
            <p>By selecting the Flash Viewer Type for the ActiveReports 11 ASP.NET WebViewer control, the UI equivalent of the
            Windows Forms Viewer control will be rendered within any browser which supports Flash 11 and later. This viewer 
            type also offers developers many additional features including localization, themes, and UI customization.</p>
            
            <p>Take a moment to adjust settings and select a report, then click the "View Report" button to be
            redirected to a WebForm containing the Flash WebViewer.</p>

            <form id="form2" runat="server">
                <asp:Panel ID="ViewerOptionsPanel" runat="server" GroupingText="Flash Viewer Options" Width="100%">
                    <asp:CheckBox ID="ShowSplitter" runat="server" Checked="True" Text="Show splitter" /><br />
                    <asp:CheckBox ID="ShowToc" runat="server" Checked="True" Text="Show TOC Tab" /><br />
                    <asp:CheckBox ID="ShowThumbnails" runat="server" Checked="True" Text="Show Thumbnails Tab" /><br />
                    <asp:CheckBox ID="ShowToolbar" runat="server" Checked="True" Text="Show Toolbar" /><br />
                    <asp:CheckBox ID="InsertButton" runat="server" Text="Insert Custom Toolbar Button" /><br />
                    <br />
                    <table>
                        <tr>
                            <td style="width:130px">
                                <asp:Label ID="LanguageLabel" runat="server" Text="Select Language:" />
                            </td>
                            <td>
                                <asp:DropDownList ID="LanguageDropDownList" runat="server" Width="154px">
                                    <asp:ListItem Value="en_US">English</asp:ListItem>
                                    <asp:ListItem Value="ja_JP">Japanese</asp:ListItem>
                                    <asp:ListItem Value="pt_BR">Portuguese</asp:ListItem>
                                    <asp:ListItem Value="de_DE">German</asp:ListItem>
                                    <asp:ListItem Value="ru_RU">Russian</asp:ListItem>
                                    <asp:ListItem Value="zh_CN">Chinese</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="ThemesLabel" runat="server" Text="Select Theme:" />
                            </td>
                            <td>
                                <asp:DropDownList ID="ThemesDropDownList" runat="server" Width="154px">
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="ReportsLabel" runat="server" Text="Select Report:" />
                            </td>
                            <td>
                                <asp:DropDownList ID="ReportsDropDownList" runat="server" Width="154px">
                                </asp:DropDownList>
                            </td>
                        </tr>
                    </table>
                    <asp:Button ID="ViewReportButton" runat="server" Text="View Report" OnClick="ViewReportButton_Click" />
                </asp:Panel>
            </form>
        </div>
    </div>
    
</body>
</html>

