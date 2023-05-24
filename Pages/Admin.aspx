<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Main.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="Skyblock_website.Pages.Admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <nav class="menu">
        <a href="Admin.aspx" style="color:orange">Admin</a>
        <a href="About.aspx">About</a>
        <a href="Home.aspx">Home</a>
        <a href="Guides.aspx">Guides</a>
        <a href="Disconnect.aspx">Disconnect</a>
    </nav>
    <h1>Admin</h1>
    <table border="1" class="admin" style="border-spacing:5px; height:100px; width: 200px ;margin:0px auto; text-align:center;">
        <tr>
            <th>uName</th>
             <th>fName</th>
            <th>lName</th>
            <th>email</th>
            <th>password</th>
            <th>gender</th>
            <th>city</th>
            <th>year</th>
            <th>prefix</th>
            <th>phone</th>
            <th>hob1</th>
            <th>hob2</th>
            <th>hob3</th>
            <th>hob4</th>
            
            
            
           
            
            
            
            
            
            
            
           
            
        </tr>
        <%=st%>
    </table>
</asp:Content>
