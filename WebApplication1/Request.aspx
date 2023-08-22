<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Request.aspx.cs" Inherits="WebApplication1.Request" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Spotify - Music On The Go</title>
	<meta charset="utf-8" />
    <link href="Navbar.css" rel="stylesheet" />
    <link href="Request.css" rel="stylesheet" />
</head>
<body>
    <nav class="navbar">
        <ul class="navbar-nav">
            <li class="logo">
                <a class="nav-link" href="Home.html">
                    <img src="./spotify.svg" />
                    <span class="link-text" >Spotify</span>
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="Home.html">
                    <img src="icons/home.svg" alt="Home" />
                    <span class="link-text">Home</span>
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="About.html">
                    <img src="icons/about.svg" alt="About us" />
                    <span class="link-text">About us</span>
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="Library.aspx">
                    <img src="icons/library.svg" alt="Library" />
                    <span class="link-text">Library</span>
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="Review.aspx">
                    <img src="icons/like.svg" alt="Liked Songs" />
                    <span class="link-text">Rating & Review</span>
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="./Request.aspx">
                    <img src="icons/icons-solid.svg" alt="Request Songs" />
                    <span class="link-text">Request Songs</span>
                </a>
            </li>
        </ul>
    </nav>
    <main>
    <h1>Can't Find What Song You were Looking For?No Worries</h1>
    <div class="container">
    <div class="main">
        <label class="brand"><img src="Spotiflyer.svg" />Spotify</label>
        <input type="checkbox" id="chk" aria-hidden="true"/>
        <div class="singup">
            <form id="form1" runat="server">
                <label for="chk" aria-hidden="true" >Request Song!</label>
                <asp:TextBox ID="TextBox1" class="input" type="text" placeholder="User name" runat="server"></asp:TextBox>
                <asp:TextBox ID="TextBox2" class="input" type="email" placeholder="Email" runat="server"></asp:TextBox>
                <asp:TextBox ID="TextBox3" class="input" type="text" placeholder="Song Name, e.g, The Cure-Lady Gaga" runat="server"></asp:TextBox>
                <asp:Button ID="Button1" class="button" runat="server" Text="Request" OnClick="Button1_Click" />
                <asp:Label ID="Label1" class="brand" runat="server"></asp:Label>
                <asp:GridView ID="GridView1" AlternatingRowStyle-HorizontalAlign="Center" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" DataKeyNames="Id" DataSourceID="SqlDataSource1" GridLines="None">
        <Columns>
            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:BoundField DataField="SongName" HeaderText="SongName" SortExpression="SongName" />
        </Columns>
        <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
        <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
        <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
        <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#594B9C" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#33276A" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:constr %>" SelectCommand="SELECT * FROM [Request]"></asp:SqlDataSource>
            </form>
        </div>
    </div>
    </div>
    </main>
</body>
</html>
