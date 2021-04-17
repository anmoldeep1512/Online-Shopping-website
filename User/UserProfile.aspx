<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserProfile.aspx.cs" Inherits="Proj1.UserProfile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous"/>
    <style>
        body{
            background-image:linear-gradient(to right, #3376ac, #0a3366);
            margin-top: 50px !important;
        }
        .image{
             width: 70px;
             height: 70px;
             overflow: hidden;
        }
        .image:hover{
            opacity: .5;
        }
        .col-md-6{
            text-align: center;
            padding-top: 70px;
        }
        .col-md-10{
            padding-left: 70px;
            padding-top: 30px;
            color: beige;
        }
        .a{
            color: antiquewhite;
            font-size: 15px;
            font-weight: bold;
            text-decoration: none;
        }
        .a:hover{
            color: bisque;
        }
        .info{
            text-align: -webkit-center;
            font-family: Helvetica;
            font-size: 23px;
        }
        .first-row{
            font-family: serif;
            font-weight: bold;
        }
        .second-row{
            padding-left: 10px;
        }
        .back{
            color: gold;
            font-size: 15px;
            font-weight: bold;
            text-decoration: none;
        }
        .a:hover{
            color: cornsilk;
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
                            <div class="col-md-2"> 
                               <asp:HyperLink ID="HomeHyper" class="back" NavigateUrl="~/User/UserHome.aspx" runat="server">Back to HomePage</asp:HyperLink>
                            </div>
                        </div>
                        <div class="row info">
                            <div class="col-md-10">
                                <asp:DataList ID="DataList1" runat="server">
                                    <ItemTemplate>
                                        <table class="w-100">
                                            <tr>
                                                <td class="first-row">First Name:</td>
                                                <td>
                                                    <asp:Label ID="Label2" class="second-row" runat="server" Text='<%# Eval("fname") %>'></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="first-row">Last Name:</td>
                                                <td>
                                                    <asp:Label ID="Label1" class="second-row" runat="server" Text='<%# Eval("lname") %>'></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="first-row">Email:</td>
                                                <td>
                                                    <asp:Label ID="Label3" class="second-row" runat="server" Text='<%# Eval("email") %>'></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="first-row">Phone Number:</td>
                                                <td>
                                                    <asp:Label ID="Label4" class="second-row" runat="server" Text='<%# Eval("phone") %>'></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="first-row">City:</td>
                                                <td>
                                                    <asp:Label ID="Label6" class="second-row" runat="server" Text='<%# Eval("city") %>'></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="first-row">Pincode:</td>
                                                <td>
                                                    <asp:Label ID="Label5" class="second-row" runat="server" Text='<%# Eval("pincode") %>'></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="first-row">Address:</td>
                                                <td>
                                                    <asp:Label ID="Label7" class="second-row" runat="server" Text='<%# Eval("address") %>'></asp:Label>
                                                </td>
                                            </tr>
                                        </table>
                                    </ItemTemplate>
                                </asp:DataList>
                            </div>
                        </div>
                        <div class="row">
                                <div class="col-md-6" >
                                    <asp:ImageButton ID="update" class="image" runat="server" 
                                        ImageUrl="~/icons/updateuser.png" PostBackUrl="~/User/UpdateUser.aspx" />
                                    <br /><asp:HyperLink ID="UpdateHyper" class="a" runat="server"  
                                        NavigateUrl="~/User/UpdateUser.aspx">Update Profile</asp:HyperLink>
                                </div>
                                <div class="col-md-6">
                                    <asp:ImageButton ID="delete" class="image" runat="server" 
                                        ImageUrl="~/icons/deleteuser.png" PostBackUrl="~/User/DeleteUser.aspx" />
                                    <br /><asp:HyperLink ID="DeleteHyper" class="a" runat="server"  
                                        NavigateUrl="~/User/DeleteUser.aspx">Delete Profile</asp:HyperLink>
                                </div>
                         </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
    
</body>
</html>
