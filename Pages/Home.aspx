<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Main.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Skyblock_website.Pages.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <nav class="menu">
        <%=hellomsg %>
        <a href="About.aspx">About</a>
        <a style="color:orange" href="#">Home</a>
        <%=msg2 %>
        <%=msg1 %>
    </nav>
    <h1>Hypixel Skyblock Homepage</h1>



    <p style="font-size:24px;">
        Hypixel Skyblock is a popular Minecraft MMORPG game that is running on the minecraft server "Hypixel"
        featuring a game set on a series of small islands in the sky as it's name suggested.
        Players can collect resources, fish, farm crops, build farms, kill mobs and chop down trees to gain skills points for stats.
        In addition the game implemented an economy system with trades and offers, a few minigames, boss battles, quests and a dungeons area for some progress and repeatability in gameplay.
        The server has a large player base and active community, and has received numerous accolades for its high-quality gameplay and content.
    </p><a href="/pics/map.png" target="_blank">
    <img src="/pics/map.png" style="width: 25%; height: 25%; margin-top: 17px;" alt="the map of all the islands of skyblock" /></a>
    <p style="margin-top:10px">islands map</p>
    <h1> What can you find?</h1>
    <p>
        In my website you will be able to find all sort of useful guides about how to progress in skyblock no matter which stage of the game you are.
        <br /> Skyblock is a huge game so you will need all sort of stuff for different needs while you play and it gets very messy from time to time. That's why my website is here to
        organize all of those progressions and needs for you to have a better understanding on what you need.
    </p>
    <h1>SO WHAT ARE YOU WAITING FOR?</h1>
    <p style="font-weight:bolder">click on the image below to start your skyblock adventure</p>

    <a href="Signup.aspx">
        <img src="/pics/map2.jpg" alt="Introduction - Hypixel SkyBlock " style="width:750px; height:435px" />
    </a>
    </asp:Content>
