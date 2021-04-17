<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.Master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="Admin.User.Products" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />  


    <div class="row" style="padding-top:50px">
       <asp:repeater ID="rptrProducts" runat="server">
           <ItemTemplate>
               <div class="col-sm-3 col-md-3">
                   <a href="ProductView.aspx?PID=<%# Eval("PID") %>" style="text-decoration:"none";">
                   <div class="thumbnail">              
                     <img src="../Images/ProductImages/<%# Eval("PID") %>/<%# Eval("ImageName") %><%# Eval("Extention") %>" alt="<%# Eval("ImageName") %>" />
                     <div class="caption"> 
                          <div class="probrand"><%# Eval ("BrandName") %>  </div>
                          <div class="proName"> <%# Eval ("PName") %> </div>
                          <div class="proPrice"> <span class="proOgPrice" > <%# Eval ("PPrice") %> </span> <%# Eval ("PSelPrice") %> <span class="proPriceDiscount"> (<%# Eval("DiscAmount") %> off) </span></div>      
                     </div>
                 </div>
               </div>
               </a>
               </ItemTemplate>
       </asp:repeater>
    </div>



    <%--second product--%>

</asp:Content>
