<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Main.Master" AutoEventWireup="true" CodeBehind="Gallery.aspx.cs" Inherits="Skyblock_website.Pages.Gallery" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <nav class="menu">
        <a style="color:orange" href="Gallery.aspx">Gallery</a>
        <a href="About.aspx">About</a>
        <a  href="#">Home</a>
        <%=msg2 %>
        <%=msg1 %>
    </nav>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <ul style="margin-top:170px">
        <li>
            <a href="https://www.youtube.com/watch?v=PP7mM_o-aks">Combat guide</a>
        </li>
        <br />
        <li>
           <a href="https://www.youtube.com/watch?v=Y9_inBplUYk">Mining guide</a>
        </li>
        <br />
        <li>
            <a href="https://www.youtube.com/watch?v=7KStzx6ibJc">bazaar flip</a>
        </li>
        <br />
    </ul>
    <ul>
    
    
    
        </ul>
</asp:Content>
