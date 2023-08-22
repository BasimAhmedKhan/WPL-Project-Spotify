<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="WebApplication1.Signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Spotify - Music On The Go</title>
    <link href="Login.css" rel="stylesheet" />
</head>
<body>
    <div class="main">
        <label class="brand"><img src="Spotiflyer.svg" />Spotify</label>
        <input type="checkbox" id="chk" aria-hidden="true"/>
    <div class="signup">
        <form id="form1" runat="server">
            <asp:HiddenField ID="hfUserID" runat="server" />
            <label for="chk" aria-hidden="true" >Sign up</label>
            <asp:TextBox ID="TextBox1" class="input" type="text" placeholder="User name" runat="server"></asp:TextBox>
            <asp:TextBox ID="TextBox2" class="input" type="email" placeholder="Email" runat="server"></asp:TextBox>
            <asp:TextBox ID="TextBox3" class="input" type="password" placeholder="Password" runat="server"></asp:TextBox>
            <asp:Button ID="Button1" class="button" runat="server" Text="Sign up" OnClick="Button1_Click" />
            <asp:Label ID="Label1" class="brand" runat="server"></asp:Label>
        </form>
        <h2 class="brand">Already Have an Account?<a href="Log in.aspx">Log in</a></h2>
    </div>
    </div>
</body>
</html>
