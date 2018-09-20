 <%@ Page Title="" UICulture="de" Language="C#" MasterPageFile="~/Dibasy.Master" AutoEventWireup="true" CodeBehind="AboutUs.aspx.cs" Inherits="DibasyAuto.Pages.AboutUs" %>

<%@ Register Assembly="ZedGraph.Web" Namespace="ZedGraph.Web" TagPrefix="cc1" %> 

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <!--This is an external style sheet reference-->
    <link rel="stylesheet" type="text/css" href='https://fonts.googleapis.com/css?family=Lobster' />

    <div class="AboutUsPage" 

      style="background-color: transparent; 
      text-align:center;
      font-size:16px;
      background-position: center;
      background-repeat: no-repeat; 
      background-size: cover;
      margin: 0;
      padding-top: 20px;
      width:100%;
      height: auto;">


    <asp:Chart ID="Chart1" runat="server">
        <series>
            <asp:Series Name="Series1">

            </asp:Series>
        </series>
        <chartareas>
        <asp:ChartArea Name="ChartArea1">

        </asp:ChartArea>
            </chartareas>
    </asp:Chart>
 
   <cc1:ZedGraphWeb ID="ZedGraphWeb1" runat="server" OnRenderGraph="ZedGraphWeb1_RenderGraph"></cc1:ZedGraphWeb>
        
        <br />
        <br />
        <b>About US</b>
        <p><b>Welcome To Abdul's Car Sale!</b></p>
        <br />
              <p>  Abdul's Car Sale is the top source for buying quality cars for unbeatable prices. </p>
              <p>  We specialize in selling the best cars to the public for approximately half the </p>
              <p>  price of the market price.The perks in buying cars from us aside from the low purchase </p>
              <p>  cost is also that you're less likely to depreciate given the low cost you're able to purchase</p>
              <p>  them for. In essence the resale value is surprisingly better in that sense. Not to mention your </p>
              <p>  budget allows you to purchase a much better car for the low.</p>

            <br />
            <br />
            <p>The process is simple- We do the paperwork- you drive your dream car! That's it!</p>
            <br />
            <br />
            <br />
 </div>

</asp:Content>

