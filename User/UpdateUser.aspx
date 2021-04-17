<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UpdateUser.aspx.cs" Inherits="Proj1.UpdateUser" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous"/>
    <style type="text/css">
        body{
            margin: 0;
            padding: 0;
            background-color: lavender;
            font-family: sans-serif;
        }
        .login{
            position: absolute;
            top: 90%;
            left: 50%;
            transform: translate(-50%, -50%);
            width: 350px;
            height: 780px;
            padding: 80px 40px;
            box-sizing: border-box;
            background: rgba(0,0,0,.5);
        }
        .user{
            width: 100px;
            height: 100px;
            overflow: hidden;
            position: absolute;
            top: calc(-100px/2);
            left: calc(50% - 50px);
        }
        h2{
            margin: 0;
            padding: 0 0 20px;
            text-align: center;
            color: #fff;
        }
        h5{
            margin: 0;
            padding: 0;
            font-weight: bold;
            color: beige;
        }
        .login .labels{
            margin: 0;
            padding: 0;
            font-weight: bold;
            color: #fff;
            height: 40px;
        }
        .login .input{
            width: 100%;
            margin-bottom: 20px;
        }
        .login .field{
            border: none;
            border-bottom: 1px solid #fff;
            background: transparent;
            outline: none;
            height: 40px;
            color: #fff;
            font-size: 16px;
        }
        ::placeholder{
            color: rgba(255,255,255,0.5);
        }
        .login .button{
            border: none;
            outline: none;
            height: 40px;
            color: #fff;
            font-size: 16px;
            background: #ff5733;
            cursor: pointer;
            border-radius: 20px;
        }
        .login .button:hover{
            background: #ff6a00;
            color: #262626;
        }
        .back{
            color: indigo;
            font-size: 15px;
            font-weight: bold;
            text-decoration: none;
        }
        .p{
            text-align:center;
        }
    </style>
</head>
<body>
    <div class="container">
    <div class="row">
            <div class="col-md-2"> 
               <asp:HyperLink ID="ProfileHyper" class="back" NavigateUrl="~/UserProfile.aspx" runat="server">Back to Profile</asp:HyperLink>
            </div>
    </div>
    <div class="login">
        <img src="../icons/updateuser.png" class="user"/>
        <h2>Update Profile</h2>
        <p><asp:Label ID="UserHeading" runat="server" Text="Label"></asp:Label></p>
        <form id="form1" runat="server">
           <div align="center">
               <table align="center">
                 <tr>
                     <td class="labels">
                         First Name
                     </td>
                     <td>
                         
                         <asp:TextBox ID="FirstName" class="input" runat="server" ></asp:TextBox>
                         
                     </td>
                     <td>
                         
                         <asp:RequiredFieldValidator ID="ValidFirstName" runat="server" 
                             ControlToValidate="FirstName" Display="Dynamic" 
                             ErrorMessage="Enter First Name" ForeColor="Red" SetFocusOnError="True" 
                             ValidationGroup="RegValSummary">*</asp:RequiredFieldValidator>
                         
                     </td>
                 </tr>
                 <tr>
                     <td class="labels">
                         Last Name
                     </td>
                     <td>
                         
                         <asp:TextBox ID="LastName" class="input" runat="server"></asp:TextBox>
                         
                     </td>
                     <td>
                         
                         <asp:RequiredFieldValidator ID="ValidLastName" runat="server" 
                             ControlToValidate="LastName" Display="Dynamic" 
                             ErrorMessage="Enter Last Name" ForeColor="Red" SetFocusOnError="True" 
                             ValidationGroup="RegValSummary">*</asp:RequiredFieldValidator>
                     </td>
                 </tr>
                 <tr>
                     <td class="labels">
                         Email
                     </td>
                     <td>
                         
                         <asp:TextBox ID="Email" class="input" runat="server"></asp:TextBox>
                         
                     </td>
                     <td>
                         
                         <asp:RegularExpressionValidator ID="ValidExpEmail" runat="server"
                             ErrorMessage="Invalid Email Address." Display="Dynamic" 
                             SetFocusOnError="true" ForeColor="Red" ValidationGroup="RegValSummary" 
                             ValidationExpression="^[^@\s]+@[^@\s]+\.[^@\s]+$" 
                             ControlToValidate="Email">*</asp:RegularExpressionValidator>
                         
                         <asp:RequiredFieldValidator ID="ValidEmail" runat="server" 
                             ControlToValidate="Email" Display="Dynamic" 
                             ErrorMessage="Enter Email" ForeColor="Red" SetFocusOnError="True" 
                             ValidationGroup="RegValSummary">*</asp:RequiredFieldValidator>
                     </td>
                 </tr>
                 <tr>
                     <td class="labels">
                         Phone Number
                     </td>
                     <td>
                         
                         <asp:TextBox ID="Phone" class="input" runat="server" 
                             TextMode="SingleLine"></asp:TextBox>
                         
                     </td>
                     <td>
                         
                         <asp:RequiredFieldValidator ID="ReqPhone" runat="server" 
                             ControlToValidate="Phone" Display="Dynamic" 
                             ErrorMessage="Enter Phone Number" ForeColor="Red" SetFocusOnError="True" 
                             ValidationGroup="RegValSummary">*</asp:RequiredFieldValidator>
                 
                         <asp:RangeValidator ID="ValidPhone" runat="server" ControlToValidate="Phone"  
                             Display="Dynamic" ErrorMessage="Invalid Phone Number" ForeColor="Red" 
                             MaximumValue="9999999999" MinimumValue="1000000000" 
                             SetFocusOnError="True" ValidationGroup="RegValSummary">*</asp:RangeValidator>
                     </td>
                 </tr>
                  <tr>
                     <td class="labels">
                         City
                     </td>
                     <td>
                         
                         <asp:TextBox ID="City" class="input" runat="server"
                             TextMode="SingleLine"></asp:TextBox>
                         
                     </td>
                     <td>
                         
                         <asp:RequiredFieldValidator ID="ValCity" runat="server" 
                             ControlToValidate="City" Display="Dynamic" 
                             ErrorMessage="Enter City" ForeColor="Red" SetFocusOnError="True" 
                             ValidationGroup="RegValSummary">*</asp:RequiredFieldValidator>
                     </td>
                 </tr>
                  <tr>
                     <td class="labels">
                         Pincode
                     </td>
                     <td>
                         
                         <asp:TextBox ID="Pincode" class="input" runat="server"  
                             TextMode="SingleLine"></asp:TextBox>
                         
                     </td>
                     <td>
                         
                         <asp:RequiredFieldValidator ID="ReqPincode" runat="server" 
                             ControlToValidate="Pincode" Display="Dynamic" 
                             ErrorMessage="Enter Pincode" ForeColor="Red" SetFocusOnError="True" 
                             ValidationGroup="RegValSummary">*</asp:RequiredFieldValidator>
                 
                         <asp:RangeValidator ID="ValidPincode" runat="server" ControlToValidate="Pincode"  
                             Display="Dynamic" ErrorMessage="Invalid Pincode" ForeColor="Red" 
                             MaximumValue="999999" MinimumValue="100000" SetFocusOnError="True" 
                             Type="Integer" ValidationGroup="RegValSummary">*</asp:RangeValidator>
                     </td>
                 </tr>
                 <tr>
                     <td class="labels">
                         Address
                     </td>
                     <td>
                         
                         <asp:TextBox ID="Address" class="input" runat="server" 
                             TextMode="MultiLine"></asp:TextBox>
                         
                     </td>
                     <td>
                         
                         <asp:RequiredFieldValidator ID="ValAddress" runat="server" 
                             ControlToValidate="Address" Display="Dynamic" 
                             ErrorMessage="Enter Address" ForeColor="Red" SetFocusOnError="True" 
                             ValidationGroup="RegValSummary">*</asp:RequiredFieldValidator>
                     </td>
                 </tr>
                 
                 </table>
                 
                         <asp:Button ID="Button1" runat="server"  Text="Update Profile" 
                            class="button" ValidationGroup="RegValSummary" OnClick="Button1_Click" />
                     
                 <table>
                 <tr>
                     <td colspan="3">
                         <div>
                             <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
                             <br />
                             <asp:ValidationSummary ID="RegValidationSummary" runat="server" 
                             ForeColor="Red" HeaderText="Error :" Height="223px" Width="536px" 
                             ValidationGroup="RegValSummary" />
                         </div>
                     </td>
                 </tr>
              </table>
          </div>
        
        </form>
    </div>
        </div>
    <p> &nbsp;</p>
</body>
</html>
