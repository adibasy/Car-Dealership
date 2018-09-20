<%@ Page Title="" Language="C#" MasterPageFile="~/Dibasy.Master" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="DibasyAuto.ContactUs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  
 <div class="ContactUsPage" 

      style="background-color: transparent; 
     text-align:center;
      background-position: center;
      background-repeat: no-repeat; 
      background-size: cover;
      padding-left:8px;
      margin: 0;
      width:100%;
      height: 640px">


<asp:Label ID="lblJSON" runat="server"></asp:Label>
  
    <input type="hidden" runat="server" id="JSONObj" />

    <input type="hidden" runat="server" id="Hidden1" />
           
    <br />   

  <asp:Panel style="clear:both" ID="PersonalDetails" runat="server" GroupingText="Contact Details" Width="800px">  
      
   <asp:Label ID="Label1" runat="server"></asp:Label>
    <table>
        <tr>
  <td><asp:Label ID="lblFname"  Text="First Name:" runat="server" /></td>
  <td><asp:TextBox ID="txtFname" runat="server" /></td>
            </tr>
        <tr>
  <td> <asp:Label ID="lblLName" runat="server" Text=" Last Name:" /></td>
  <td><asp:TextBox id="txtLName" runat="server" /></td>
           </tr>
    <tr>
  <td> <asp:Label ID="lblAdd1" runat="server" Text=" Address 1:" /></td>
  <td><asp:TextBox id="txtAdd1" runat="server" /></td>
           </tr>
  
 <tr>
  <td> <asp:Label ID="lblAdd2" runat="server" Text=" Address 2:" /></td>
  <td><asp:TextBox id="txtAdd2" runat="server" /></td>
  </tr>

<tr>
     <td> <asp:Label ID="lblCity" runat="server" Text=" City:" /></td>
      <td><asp:TextBox ID="txtCity" runat="server" /></td>
</tr>

<tr>
     <td> <asp:Label ID="lblCountry" runat="server" Text=" Country:" /></td>
      <td><asp:TextBox ID="txtCountry" runat="server" /></td>
</tr>

<tr>
     <td> <asp:Label ID="lblState" runat="server" Text=" State:" /></td>
      <td><asp:TextBox ID="txtState" runat="server" /></td>
</tr>

<tr>
     <td> <asp:Label ID="lblZip" runat="server" Text=" Zip:" /></td>
      <td><asp:TextBox ID="txtZip" runat="server" /></td>
</tr>

 
   </table>     
    <asp:Button Text="Submit" ID="btnSubmit" OnClick="Page_Load" runat="server" />


     <asp:Button Text="Send Cookie" ID="SendCookie" OnClientClick="setCookie()" OnClick="Page_Load" runat="server" />
       <input type="button" id="btnAJAX" value="Update Ajax" onclick="ParseJSONAJAX()" />
</asp:Panel>
    

    <script type="text/javascript">
    function setCookie()
    {
        var value = document.getElementById("ContentPlaceHolder1_lblJSON").innerHTML;
        var exdate = new Date();
        exdate.setDate(exdate.getDate() + 15);
        var c_value = value + "; expires=" + exdate.toUTCString();

        document.cookie = "JSON=" + c_value;
    }
    </script>

   

    <div id="JSONAJAX"></div>
    <script type="text/javascript">
        function getXMLHTTP() {
            if (window.XMLHttpRequest)
                return new XMLHttpRequest();
            else
                return new ActiveXObject("Microsoft.XMLHTTP");
        }
        function ParseJSONAJAX() {
            var xmlHttp = getXMLHTTP();
            xmlHttp.onreadystatechange = function () {
                if (xmlHttp.readyState == 4 && xmlHttp.status == 200) {
                    document.getElementById('JSONAJAX').innerHTML = xmlHttp.responseText;
                }
            }
            var url = "../Handlers/JSONAJAX.ashx"
            xmlHttp.open("POST", url, true);
            xmlHttp.send();
        }
    </script>

       </div>
</asp:Content>
