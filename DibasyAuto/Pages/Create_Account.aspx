<%@ Page Title="" Language="C#" MasterPageFile="~/Dibasy.Master" AutoEventWireup="true" CodeBehind="Create_Account.aspx.cs" Inherits="DibasyAuto.Pages.Create_Account" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div class="CreateAccountPage" 

      style="background-color: transparent; 
     text-align:center;
      background-position: center;
      background-repeat: no-repeat; 
      background-size: cover;
      padding-left:10px;
      margin: 0;
      width:100%;
      height:auto">

    <br />
    <br />
    <b>Finance Application</b>
    <br />
<asp:Panel style="clear:both" ID="PersonalDetails" runat="server" GroupingText="Personal Details" Width="800px">
 <table>
  <tr>
   <td><asp:Label ID="lblGender" style="color:Black" Text="Gender:" runat="server" /></td>
   <td><asp:RadioButton ID="radMale" Text= "Male" runat="server" /> &nbsp;
   <asp:RadioButton ID="radFemale" Text="Female" runat="server" /> 
   </td>
  </tr>
 
<tr>
   <td><asp:Label ID="lblFirstName" style="color:Black" Text="First Name: " runat="server"  /></td>
   <td><asp:TextBox ID="txtFirstName" runat="server" /></td>
    <td><asp:RequiredFieldValidator id="valFirstNameRequired" runat="server" 
   ControlToValidate="txtFirstName"
    ErrorMessage="* You must enter a First name" Display="dynamic" /></td>
</tr>

<tr>
   <td><asp:Label ID="lblLastName" style="color:Black" Text="Last Name: " runat="server"  /></td>
   <td><asp:TextBox ID="txtLastName" runat="server" /></td>
    <td><asp:RequiredFieldValidator id="valLastNameRequired" runat="server" 
   ControlToValidate="txtLastName"
    ErrorMessage="* You must enter a Last name" Display="dynamic" /></td>
</tr>

    <tr>
   <td><asp:Label ID="lblDateOfBirth" style="color:Black" Text="Date of Birth: " runat="server"  /></td>
   <td><asp:TextBox ID="txtDateOfBirth" runat="server" /></td>
   <td> <asp:RangeValidator id="valRange" runat="server"
    ControlToValidate="txtDateOfBirth"
    MaximumValue="12/31/1998"
    MinimumValue="1/1/1998"
    Type="Date"
    ErrorMessage="* The date must be between 1/1/1998 and 12/13/1998" Display="dynamic"></asp:RangeValidator></td>
</tr>

<tr>
   <td><asp:Label ID="lblEmailAddress" style="color:Black" Text="Email Address: " runat="server"   /></td>
   <td><asp:TextBox ID="txtEmailAddress" runat="server"  align="right"  /></td>
    <td><asp:RegularExpressionValidator id="valRegEx" runat="server"
    ControlToValidate="txtEmailAddress"
    ValidationExpression=".*@.*\..*"
    ErrorMessage="* Your entry is not a valid e-mail address." Display="dynamic"></asp:RegularExpressionValidator></td>
    </tr>
     </table>
</asp:Panel>

<asp:Panel style="clear:both" ID="companyDetails" runat="server" GroupingText="Company Details" Width="800px">
<table>
    <tr>
   <td><asp:Label ID="companyName" style="color:Black" Text="Company Name: " runat="server" /></td>
   <td><asp:TextBox ID="txtCompanyName" runat="server" /></td>
   <td><asp:RequiredFieldValidator id="companyNameValidator" runat="server" 
   ControlToValidate="txtCompanyName"
    ErrorMessage="* You must enter a Company name" Display="dynamic" /></td>
</tr>
    </table>
</asp:Panel>

<asp:Panel style="clear:both" ID="yourAddress" runat="server" GroupingText="Your Address" Width="800px">
<table>
    <tr>
   <td><asp:Label ID="lblStreetAddress" style="color:Black" Text="Street Address: " runat="server" /></td>
   <td><asp:TextBox ID="txtStreetAddress" runat="server" /></td>
 <td><asp:RequiredFieldValidator id="valLasStreetAddRequired" runat="server" 
      ControlToValidate="txtStreetAddress"
    ErrorMessage="* You must enter a Street name" Display="dynamic" /></td>
</tr>

<tr>
   <td><asp:Label ID="lblSuburb" style="color:Black" Text="Suburb: " runat="server" /></td>
   <td><asp:TextBox ID="txtSuburb" runat="server" /></td>
</tr>

    <tr>
   <td><asp:Label ID="lblPostCode" style="color:Black" Text="Post Code: " runat="server" /></td>
   <td><asp:TextBox ID="txtPostCode" runat="server" /></td>
    <td><asp:RegularExpressionValidator id="RegularExpressionValidator1" runat="server"
    ControlToValidate="txtPostCode"
    ValidationExpression="\d{5}"
    ErrorMessage="* Zip Code must be 5 numeric digits." display="dynamic"></asp:RegularExpressionValidator>
    </td>

</tr>
<tr>
   <td><asp:Label ID="lblCity" style="color:Black" Text="City: " runat="server" /></td>
   <td><asp:TextBox ID="txtCity" runat="server" /></td>
</tr>

 <tr>
   <td><asp:Label ID="lblState" style="color:Black" Text="State/Province: " runat="server" /></td>
   <td><asp:TextBox ID="txtState" runat="server" /></td>
</tr>
    
    <tr>    
 <td><asp:Label ID="lblCountry" style="color:Black" Text="Country: " runat="server" /></td>
   <td> <select>
 <option value="Select">Please Select:  </option>
  <option value="America">United States</option>
  <option value="Africa">Sierra Leone</option>
  <option value="Europe">England</option>
  <option value="Asia">China</option>
  </select></td>
</tr>
   </table>  
</asp:Panel>

   
<asp:Panel style="clear:both" ID="contactInfo" runat="server" GroupingText="Your Contact Information" Width="800px">
<table>
    <tr>
   <td><asp:Label ID="lblTelephone" style="color:Black" Text="Telephone Number: " runat="server" /></td>
   <td><asp:TextBox ID="txtTelephone" runat="server" /></td>
 <td><asp:RequiredFieldValidator id="RequiredFieldValidator1" runat="server" 
   ControlToValidate="txtTelephone"
    ErrorMessage="* You must enter a Telephone Number" Display="dynamic" /></td>
</tr>

    <tr>
   <td><asp:Label ID="lblFax" style="color:Black" Text="Fax Number: " runat="server" /></td>
   <td><asp:TextBox ID="txtFax" runat="server" /></td>
</tr>
    </table>
</asp:Panel>

    

<asp:Panel style="clear:both" ID="Options" runat="server" GroupingText="Options" Width="800px">
<table>
     <tr>
   <td><asp:Label ID="Label1" style="color:Black" Text="Newsletter: " runat="server" /></td>
   <td><input type="checkbox" name="newsLetter" value="Newsletter" /> </td>
</tr>
    
    </table>
</asp:Panel>  
    
  

 <asp:Panel style="clear:both" ID="yourPassword" runat="server" GroupingText="Your Social" Width="800px">
<table>
       <tr>
   <td><asp:Label ID="lblPassword" style="color:Black" Text="SSN: " runat="server" /></td>
   <td><asp:TextBox ID="txtPassword" runat="server" /></td>
    <td> <asp:CompareValidator id="valCompare" runat="server"
    ControlToValidate="txtPassword" ControlToCompare="txtConfirmPassword"
    Operator="Equal"
	Type="String"
    ErrorMessage="* The SSN Values must match!" Display="dynamic"></asp:CompareValidator></td>
</tr>

    <tr>
   <td><asp:Label ID="lblConfirmPassword" style="color:Black" Text="SSN Confirmation: " runat="server" /></td>
   <td><asp:TextBox ID="txtConfirmPassword" runat="server" /></td>
 <td> <asp:CompareValidator id="CompareValidator1" runat="server"
    ControlToValidate="txtPassword" ControlToCompare="txtConfirmPassword"
    Operator="DataTypeCheck"
	Type="String"
    ErrorMessage="* InValid Data Type!" Display="dynamic"></asp:CompareValidator></td>
</tr>
    
    </table>
</asp:Panel>  

    <table>
    <asp:Button ID="Submit" Text="Submit" runat="server" onclick="Submit_Click" />
        </table>

  </div>
</asp:Content>
