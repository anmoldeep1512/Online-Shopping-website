<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LandingPage.aspx.cs" Inherits="Proj1.LandingPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous"/>
    <style>
        body{
            background-image:linear-gradient(to right, #3376ac, #0a3366);
            margin-top: 150px !important;
        }
        .image{
             width: 150px;
             height: 150px;
             overflow: hidden;
        }
        .image:hover{
            opacity: .5;
        }
        .col-md-6{
            text-align: center;
        }
        .a{
            color: antiquewhite;
            font-size: 20px;
            font-weight: bold;
            text-decoration: none;
        }
        .a:hover{
            color: bisque;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="row">
            <div class="col-md-12" offset="md-1">
                <form id="form1" runat="server">
                    <div>
                        <div class="row">
                                <div class="col-md-6" >
                                    <asp:ImageButton ID="admin" class="image" runat="server" 
                                        ImageUrl="~/icons/iconadmin.png" PostBackUrl="~/Admin/AdminLogin.aspx" />
                                    <br /><asp:HyperLink ID="HyperLink1" class="a" runat="server"  
                                        NavigateUrl="~/Admin/AdminLogin.aspx">Administrator</asp:HyperLink>
                                </div>
                                <div class="col-md-6">
                                    <asp:ImageButton ID="user" class="image" runat="server" 
                                        ImageUrl="~/icons/user.png" PostBackUrl="~/User/LoginPage.aspx" />
                                    <br /><asp:HyperLink ID="HyperLink2" class="a" runat="server"  
                                        NavigateUrl="~/User/LoginPage.aspx">User</asp:HyperLink>
                                </div>
                         </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
    
</body>
</html>
