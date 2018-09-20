<%@ Page Title="" Language="C#" MasterPageFile="~/Dibasy.Master" AutoEventWireup="true" CodeBehind="CarDetails.aspx.cs" Inherits="DibasyAuto.Pages.CarDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


<div class="carDetailsPage"

     style="background-color: transparent; 
      text-align:center;
      background-position: center;
      background-repeat: no-repeat; 
      background-size: cover;
      font-size:25px;
      color:firebrick;
      margin: 0;
      width:100%;
      height: 640px">

<asp:DetailsView ID="carDetails" AutoGenerateRows="false" runat="server">
    <Fields>
        <asp:ImageField DataImageUrlField="fldCarPicName"><ControlStyle Width="500px" Height="350px" /></asp:ImageField>

        <asp:BoundField HeaderText="Model" DataField="fldCarModel" />
         <asp:BoundField HeaderText="Make" DataField="fldCarMake" />


    </Fields>
</asp:DetailsView>
    <br />
    <p> Car Details Coming Soon Still in Development !!!</p>
    </div>
</asp:Content>
