<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Banner.ascx.cs" Inherits="DibasyAuto.Controls.Banner" %>


<asp:Label ID ="lblBanner" runat="server">Abdul's Car Sale</asp:Label>

<%@ Register Src="Currency.ascx" TagName="Currency" TagPrefix="ucCur" %>
<%@ Register Src="Language.ascx" TagName="Language" TagPrefix="ucLag" %>


<table>
    <tr>
        <td><ucCur:Currency ID="Curr" runat="server" /></td>
        <td><ucLag:Language ID="Lang" runat="server" /></td>
        
    </tr>
</table>