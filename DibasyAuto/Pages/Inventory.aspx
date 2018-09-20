<%@ Page Title="" Language="C#" MasterPageFile="~/Dibasy.Master" AutoEventWireup="true"
    CodeBehind="Inventory.aspx.cs"  Inherits="DibasyAuto.Pages.Inventory" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

   
     <div class="InventoryPage" 

      style="background-color: transparent; 
    
      background-repeat: no-repeat; 
      background-size: cover;
      padding-left:10px;
      font-size:15px;
      margin: 0;
      width:100%;
      height: auto">
    <br />
    
   <asp:ListView runat="server" ID="ListView1" ItemPlaceholderID="itemPlaceHolder" GroupPlaceholderID="groupPlaceHolder" ItemType="DibasyAuto.tblCar">
        <GroupTemplate>
            <div>
                <div id="itemPlaceHolder" runat="server"></div>
            </div>
            <hr />
        </GroupTemplate>
        <ItemTemplate>
            <div >

                <asp:ImageButton ID="itemImageButton" PostBackUrl='<%# string.Format("~/Pages/CarDetails.aspx?id={0}",  Item.fldCarID) %>' runat="server"
                    ImageUrl="<%# Item.fldCarPicName%>" Width="270" Height="190" />
            </div>

            <div>
                <h1 style="margin-bottom:0;"><%# Item.fldCarModel %></h1>
                 <p >Make: <%# Item.fldCarMake %></p>
                <p>Model: <%# Item.fldCarModel %></p>
                
                 <p>Year: <%# Item.fldCarYear %></p>
                 <p>Milage: <%# Item.fldCarMilage %></p>
                 <p>Price: $ <%# Item.fldCarPrice %></p>
            </div>
  
        </ItemTemplate>
       
        <EmptyItemTemplate>
            <td />
        </EmptyItemTemplate>
        <EmptyDataTemplate>
            <h2 class="title">NO Cars Availabel.</h2>
            <p style="margin-left: 1em;">Why not add some Inventory</p>
        </EmptyDataTemplate>
            
         </asp:ListView>
 </div>
         


<asp:Repeater id="pCatalog" runat="server">
<HeaderTemplate>
<table border="1">
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
