<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="Proj1.AdminLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title><style type="text/css">
        body{
            margin: 0;
            padding: 0;
            background-color: lavender;
            font-family: sans-serif;
        }
        .login{
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            width: 350px;
            height: 420px;
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
        .login .btn{
            border: none;
            outline: none;
            height: 40px;
            color: #fff;
            font-size: 16px;
            background: #ff5733;
            cursor: pointer;
            border-radius: 20px;
        }
        .login .btn:hover{
            background: #ff6a00;
            color: #262626;
        }
    </style>
</head>
<body>
    <div class="login">
        <img src="icons/adminIcon.png" class="user"/>
        <h2>Administrator Login</h2>
        <form id="form1" runat="server">
           <div align="center">
               <table align="center">
                   <tr>
                       <td class="labels">Username </td>
                       <td>
                           <asp:TextBox ID="UserName" class="input field" placeholder="Enter username" 
                               runat="server"></asp:TextBox>
                       </td>
                       <td>
                           <asp:RequiredFieldValidator ID="ReqUserName" runat="server" 
                            ControlToValidate="UserName" Display="Dynamic" 
                            ErrorMessage="Enter User Name" ForeColor="Red" SetFocusOnError="True" 
                            ValidationGroup="LoginValSummary">*</asp:RequiredFieldValidator>
                       </td>
                   </tr>
                   <tr>
                       <td class="labels">Password </td>
                       <td>
                           <asp:TextBox ID="Password" class="input field" placeholder="*********" 
                               runat="server" TextMode="Password"></asp:TextBox>
                       </td>
                       <td>
                           <asp:RequiredFieldValidator ID="ReqPassword" runat="server" 
                            ControlToValidate="Password" Display="Dynamic" 
                            ErrorMessage="Enter Password" ForeColor="Red" SetFocusOnError="True" 
                            ValidationGroup="LoginValSummary">*</asp:RequiredFieldValidator>
                       </td>
                   </tr>
               </table>
               <asp:Button ID="btnLogin" runat="server" class="input btn" Text="Login" 
                   ValidationGroup="LoginValSummary" OnClick="btnLogin_Click" />
               <table>
                <tr>
                    <td colspan="3">
                        <div>
                            <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
                            <asp:Label ID="Label2" runat="server" ForeColor="#00e65d"></asp:Label>
                            <asp:ValidationSummary ID="LoginValidationSummary" runat="server" 
                            ForeColor="Red" HeaderText="Error :" Height="223px" Width="536px" 
                            ValidationGroup="LoginValSummary" />
                        </div>
                    </td>
                </tr>
            </table>
            
          </div>
        </form>
    </div>
    <p> &nbsp;</p>
</body>
</html>
