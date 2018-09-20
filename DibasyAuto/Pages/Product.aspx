<%@ Page Title="" Language="C#" MasterPageFile="~/Dibasy.Master" AutoEventWireup="true" CodeBehind="Product.aspx.cs" Inherits="DibasyAuto.Pages.Product" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:Repeater id="pCatalog" runat="server">

<HeaderTemplate>
<table border="1" ">
<tr>
<th>Item Code</th>
<th>Item Name</th>
<th>Description</th>
<th>Company</th>
<th>Price</th>
</tr>
</HeaderTemplate>

<ItemTemplate>
<tr>
<td><%#((System.Data.DataRowView)Container.DataItem)["code"]%></td>
<td><%#((System.Data.DataRowView)Container.DataItem)["name"]%></td>
<td><%#((System.Data.DataRowView)Container.DataItem)["description"]%></td>
<td><%#((System.Data.DataRowView)Container.DataItem)["company"]%></td>
<td><%#((System.Data.DataRowView)Container.DataItem)["price"] %></td>
</tr>
</ItemTemplate>

<FooterTemplate>

</table>
</FooterTemplate>

</asp:Repeater>
</asp:Content>
