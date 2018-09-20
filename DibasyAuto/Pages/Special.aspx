<%@ Page Title="" Language="C#" MasterPageFile="~/Dibasy.Master" AutoEventWireup="true" CodeBehind="Special.aspx.cs" Inherits="DibasyAuto.Special" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



      <div class="SpecialPage" 

     style="background-color: transparent; 
      text-align:center;
      font-size:16px;
      background-position: center;
      background-repeat: no-repeat; 
      background-size: cover;
      margin: 0;
      padding-left: 7px;
      width:100%;
      height: 640px">

    <br />
    <br />
    <b>Special Page</b>
    <br />
    <br />
   <asp:GridView runat="server" ID="GridView1" ItemPlaceholderID="itemPlaceHolder" GroupPlaceholderID="groupPlaceHolder" ItemType="DibasyAuto.tblCar">
        
               
           
      
        <EmptyDataTemplate>
            <h2 class="title">NO Cars Availabel.</h2>
            <p style="margin-left: 1em;">Why not add some Inventory</p>
        </EmptyDataTemplate>

                 
         </asp:GridView>        
</div>
    <br />
    <br />

</asp:Content>
