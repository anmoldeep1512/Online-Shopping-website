<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DeleteUser.aspx.cs" Inherits="Proj1.DeleteUser" %>

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
        .userlogin{
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            width: 350px;
            height: 350px;
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
            color: beige;
        }
        .userlogin .labels{
            margin: 0;
            padding: 0;
            font-weight: bold;
            color: #fff;
            height: 40px;
        }
        .userlogin .input{
            width: 100%;
            margin-bottom: 20px;
        }
        .userlogin .field{
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
        .userlogin .btn{
            border: none;
            outline: none;
            height: 40px;
            color: #fff;
            font-size: 16px;
            background: #ff5733;
            cursor: pointer;
            border-radius: 20px;
        }
        .userlogin .btn:hover{
            background: #ffc300;
            color: #262626;
        }
         .userlogin a {
             color: darksalmon;
             font-size: 14px;
             font-weight: bold;
             text-decoration: none;
         }
         .back{
            color: darkslateblue;
            font-size: 15px;
            font-weight: bold;
            text-decoration: none;
        }
    </style>
</head>
<body>
    <div class="container">
    <div class="row">
            <div class="col-md-2"> 
               <asp:HyperLink ID="ProfileHyper" class="back" NavigateUrl="~/User/UserProfile.aspx" runat="server">Back to Profile</asp:HyperLink>
            </div>
    </div>
    <div class="userlogin">    
        <img src="../icons/deleteuser.png" class="user"/>
        <h2>Delete Account</h2>
        <p><asp:Label ID="UserHeading" runat="server" Text="Label"></asp:Label></p>
        <form id="form1" runat="server">
           <div align="center">
               <table align="center">
                   
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
               <asp:Button ID="btnLogin" runat="server" class="input btn" Text="Delete Account" 
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
    </div>
</body>
</html>
