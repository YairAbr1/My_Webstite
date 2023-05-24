<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Main.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Skyblock_website.Pages.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%=msg %>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
     <nav class="menu">
        <h4 style="color: #ffffff";>Hello Guest</h4>
        <a href="About.aspx">About</a>
        <a style="margin-right:20px" href="Home.aspx">Home</a>
        <a style="color:orange" href="#">Login</a>
        <a href="Signup.aspx">Signup</a>
    </nav>
    <div class="login-container">
    <h2 class="hh2">Login</h2>
    <form method="post" runat="server">
      <input  type="text" placeholder="Username" name="uName" id ="uName" />
      <input  type="password" placeholder="Password" name="pw" id ="pw" />
        <br />
      <input  type="submit" name="submit" value="Login" />
        <br />
        <%=wrong %>
    </form>
  </div>
</asp:Content>
