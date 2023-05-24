<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Main.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="Skyblock_website.Pages.About" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <nav class="menu">
        <%=hellomsg %>
        <a style="color:orange" href="#">About</a>
        <a href="Home.aspx">Home</a>
        <%=msg2 %>
        <%=msg1 %>
    </nav>
    <h1 style="font-size: 40px;">My abouts</h1>
    <p style="margin-top: 50px; text-align: left; position:absolute; width:1300px">
        I chose this subject because this game is something i'm very passionate about.
        <br /> as of the 20th of december I have more than 1,400 hours on the game and im consistenly checking every update that launches to the game.
        <br /> I found that no matter how much time I take a break from the game I always come back because I just love it.
        <br />
        <br />
        <br />
        <br />My name is Yair Abramovich. I am in 4'י and I like to go to the gym, be with friends and play computer games.
        <br />I have an older brother Amit and an older sister Noa, both have already finished their service in the army.
        <br />My adress is Bik'At Sayarim Street 6 ב ,Kfar Saba.
        <br />My phone number is 054-6159066.

    </p>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
