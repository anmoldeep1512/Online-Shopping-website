<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegisterPage.aspx.cs" Inherits="Proj1.RegisterPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous"/>
    <style type="text/css">
        body{
            background-image:linear-gradient(to right, #955cb4, #c164a4);
            margin-top: 150px !important;

        }
        .register-left{
            text-align: center;
            color: #fff;
            padding: 30px;
        }
        .register-left p{
            padding: 20px 20px 0;
        }
        .button{
            border: none;
            outline: none;
            height: 40px;
            color: #fff;
            font-size: 16px;
            background: #955cb4;
            cursor: pointer;
            border-radius: 20px;
            position: center;
            width: 120px;
            float: right;
            margin-top: 20px;
            padding: 10px 10px;
        }
        .labels{
            margin: 0;
            padding: 0;
            color: #262626;
            height: 40px;
        }
        .button:hover{
            background: #c164a4;
            color: #262626;
        }
        .user{
            width: 100px;
            height: 100px;
            overflow: hidden;
            position: absolute;
            top: calc(-100px/2);
            left: calc(50% - 50px);
        }
        .register-right{
            border: none;
            background: #f8f8f8;
            border-top-left-radius: 10% 50%;
            border-bottom-left-radius: 10% 50%;
        }
        .register-right h2{
            text-align: center;
            margin-bottom: 10px;
            color: #555;
        }
        .register-form{
            padding: 60px;
        }
        .input{
            border: none; 
            margin-bottom: 10px; 
            float: left; 
            padding: 7px;
            border-radius: 6px;
            font-family: 'Montserrat', sans-serif;
            font-size: 13px;
            font-weight: 500; 
            background: #e5e0e0;
            box-sizing: border-box;
            margin-left: 9px;
        }
        .back{
            color: lightcoral;
            font-size: 15px;
            font-weight: bold;
            text-decoration: none;
            text-align: left;
            padding-left: 30px;
        }
        .link{
            text-align:left;
        }
    </style>
</head>
<body>
    <div class="link"> 
          <asp:HyperLink ID="ProfileHyper" class="back" NavigateUrl="~/User/LoginPage.aspx" runat="server">Login</asp:HyperLink>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-md-12" offset="md-1">
                <div class="row">
                    <div class="col-md-5 register-left">
                        <h3>Join Us</h3>
                        <p>Register to get access to store and shop online</p>
                    </div>
                    <div class="col-md-7 register-right">
                        
                        <div class="register-form">
                        <img src="../icons/register.png" class="user"/>
                        <br /><h2>Create New Account</h2>
                            <form id="form1" runat="server">
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
                                                Username
                                            </td>
                                            <td>
                                                
                                                <asp:TextBox ID="UserName" class="input" runat="server"></asp:TextBox>
                                                
                                            </td>
                                            <td>
                                                
                                                <asp:CustomValidator ID="ValidUserName" runat="server" 
                                                    ErrorMessage="Enter Username" ForeColor="Red" ControlToValidate="UserName" 
                                                    Display="Dynamic" ValidateEmptyText="True" SetFocusOnError="True" 
                                                    ValidationGroup="RegValSummary">*</asp:CustomValidator>
                                   
                                                <asp:RequiredFieldValidator ID="ReqUserName" runat="server" 
                                                    ControlToValidate="UserName" Display="Dynamic" 
                                                    ErrorMessage="Enter Username" ForeColor="Red" SetFocusOnError="True" 
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
                                        <tr>
                                            <td class="labels">
                                                Password
                                            </td>
                                            <td>
                                                
                                                <asp:TextBox ID="Password" class="input" runat="server" 
                                                    TextMode="Password"></asp:TextBox>
                                                
                                            </td>
                                            <td>
                                                
                                                <asp:RequiredFieldValidator ID="ValidPassword" runat="server" 
                                                    ControlToValidate="Password" Display="Dynamic" 
                                                    ErrorMessage="Enter Password" ForeColor="Red" SetFocusOnError="True" 
                                                    ValidationGroup="RegValSummary">*</asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="labels">Confirm password</td>
                                            <td >
                                                
                                                <asp:TextBox ID="ConPassword" class="input" runat="server" 
                                                    TextMode="Password" ></asp:TextBox>
                                                
                                            </td>
                                            <td>
                                                
                                                <asp:CompareValidator ID="CompPassword" runat="server" 
                                                    ErrorMessage="Password did not match" ForeColor="Red"
                                                    ControlToCompare="Password" ControlToValidate="ConPassword"
                                                    Display="Dynamic" SetFocusOnError="True" 
                                                    ValidationGroup="RegValSummary">*</asp:CompareValidator>
                                   
                                                <asp:RequiredFieldValidator ID="ReqConPassword" runat="server"  Display="Dynamic" 
                                                    ControlToValidate="ConPassword" ErrorMessage="Enter Password for confirmation" 
                                                    ForeColor="Red" SetFocusOnError="True" 
                                                    ValidationGroup="RegValSummary">*</asp:RequiredFieldValidator>
                                                
                                            </td>
                                        </tr>
                                        </table>
                                       
                                                <asp:Button ID="Button1" runat="server"  Text="REGISTER" 
                                                   class="button" ValidationGroup="RegValSummary" OnClick="Button1_Click"/>
                                            
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
                                </div>
                        <asp:GridView ID="GridView1" runat="server"></asp:GridView>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
    </div>
</body>
</html>
