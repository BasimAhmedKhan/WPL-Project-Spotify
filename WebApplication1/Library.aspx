<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Library.aspx.cs" Inherits="WebApplication1.Library" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Spotify - Music On The Go</title>
    <meta charset="utf-8" />
    <link href="Navbar.css" rel="stylesheet" />
    <link href="Library.css" rel="stylesheet" />
    <style type="text/css">
        .Star {
            background-image: url(images/Star.gif);
            height: 17px;
            width: 17px;
        }

        .WaitingStar {
            background-image: url(images/WaitingStar.gif);
            height: 17px;
            width: 17px;
        }

        .FilledStar {
            background-image: url(images/FilledStar.gif);
            height: 17px;
            width: 17px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <nav class="navbar">
        <ul class="navbar-nav">
            <li class="logo">
                <a class="nav-link" href="Home.html">
                    <img src="./spotify.svg" />
                    <span class="link-text">Spotify</span>
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
                    <span class="link-text">Review & Rating</span>
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
        <div class="contain">
            <h1>Artists!</h1>
            <h1>The Weeknd</h1>
            <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
        </asp:ToolkitScriptManager>
        <asp:Rating ID="Rating1" runat="server" AutoPostBack="true"
            StarCssClass="Star" WaitingStarCssClass="WaitingStar" EmptyStarCssClass="Star"
            FilledStarCssClass="FilledStar">
        </asp:Rating>
        <br />
            <asp:Label ID="lbresult" runat="server" Text=""></asp:Label>
        <br />
        <asp:TextBox runat="server" ID="txtreview" TextMode="MultiLine"></asp:TextBox>
        <br />
        <asp:Button runat="server" Text="Submit Review" ID="btnsubmit" OnClick="btnsubmit_Click" />
            <div class="container">
                <div class="songlist">
                    <div class="songitem">
                        <img src="covers/1.jpg" alt="1" />
                        <span class="songName">Let me love You</span>
                        <span class="songlistplay"><i id="0" class="far songItemPlay fa-play-circle"></i></span>
                    </div>
                    <div class="songitem">
                        <img src="covers/1.jpg" alt="1" />
                        <span class="songName">Let me love You</span>
                        <span class="songlistplay"><i id="1" class="far songItemPlay fa-play-circle"></i></span>
                    </div>
                    <div class="songitem">
                        <img src="covers/1.jpg" alt="1" />
                        <span class="songName">Let me love You</span>
                        <span class="songlistplay"><i id="2" class="far songItemPlay fa-play-circle"></i></span>
                    </div>
                    <div class="songitem">
                        <img src="covers/1.jpg" alt="1" />
                        <span class="songName">Let me love You</span>
                        <span class="songlistplay"><i id="3" class="far songItemPlay fa-play-circle"></i></span>
                    </div>
                </div>
            </div>
            <h1>Young Stunners-YS</h1>
        <asp:Rating ID="Rating2" runat="server" AutoPostBack="true"
            StarCssClass="Star" WaitingStarCssClass="WaitingStar" EmptyStarCssClass="Star"
            FilledStarCssClass="FilledStar">
        </asp:Rating>
        <br />
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
        <br />
        <asp:TextBox runat="server" ID="TextBox1" TextMode="MultiLine"></asp:TextBox>
        <br />
        <asp:Button runat="server" Text="Submit Review" ID="Button1" OnClick="Button1_Click" />
            <div class="container">
                <div class="songlist">
                    <div class="songitem">
                        <img src="covers/1.jpg" alt="1" />
                        <span class="songName">Let me love You</span>
                        <span class="songlistplay"><i id="4" class="far songItemPlay fa-play-circle"></i></span>
                    </div>
                    <div class="songitem">
                        <img src="covers/1.jpg" alt="1" />
                        <span class="songName">Let me love You</span>
                        <span class="songlistplay"><i id="5" class="far songItemPlay fa-play-circle"></i></span>
                    </div>
                    <div class="songitem">
                        <img src="covers/1.jpg" alt="1" />
                        <span class="songName">Let me love You</span>
                        <span class="songlistplay"><i id="6" class="far songItemPlay fa-play-circle"></i></span>
                    </div>
                    <div class="songitem">
                        <img src="covers/1.jpg" alt="1" />
                        <span class="songName">Let me love You</span>
                        <span class="songlistplay"><i id="7" class="far songItemPlay fa-play-circle"></i></span>
                    </div>
                </div>
            </div>
            <h1>Krishnakumar Kunnath-K.K</h1>
            <asp:Rating ID="Rating3" runat="server" AutoPostBack="true"
            StarCssClass="Star" WaitingStarCssClass="WaitingStar" EmptyStarCssClass="Star"
            FilledStarCssClass="FilledStar">
        </asp:Rating>
        <br />
            <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
        <br />
        <asp:TextBox runat="server" ID="TextBox2" TextMode="MultiLine"></asp:TextBox>
        <br />
        <asp:Button runat="server" Text="Submit Review" ID="Button2" OnClick="Button2_Click" />
            <div class="container">
                <div class="songlist">
                    <div class="songitem">
                        <img src="covers/1.jpg" alt="1" />
                        <span class="songName">Let me love You</span>
                        <span class="songlistplay"><i id="8" class="far songItemPlay fa-play-circle"></i></span>
                    </div>
                    <div class="songitem">
                        <img src="covers/1.jpg" alt="1" />
                        <span class="songName">Let me love You</span>
                        <span class="songlistplay"><i id="9" class="far songItemPlay fa-play-circle"></i></span>
                    </div>
                    <div class="songitem">
                        <img src="covers/1.jpg" alt="1" />
                        <span class="songName">Let me love You</span>
                        <span class="songlistplay"><i id="10" class="far songItemPlay fa-play-circle"></i></span>
                    </div>
                    <div class="songitem">
                        <img src="covers/1.jpg" alt="1" />
                        <span class="songName">Let me love You</span>
                        <span class="songlistplay"><i id="11" class="far songItemPlay fa-play-circle"></i></span>
                    </div>
                </div>
            </div>
            <h1>Hassan Raheem</h1>
            <asp:Rating ID="Rating4" runat="server" AutoPostBack="true"
            StarCssClass="Star" WaitingStarCssClass="WaitingStar" EmptyStarCssClass="Star"
            FilledStarCssClass="FilledStar">
        </asp:Rating>
        <br />
            <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
        <br />
        <asp:TextBox runat="server" ID="TextBox3" TextMode="MultiLine"></asp:TextBox>
        <br />
        <asp:Button runat="server" Text="Submit Review" ID="Button3" OnClick="Button3_Click" />
            <div class="container">
                <div class="songlist">
                    <div class="songitem">
                        <img src="covers/1.jpg" alt="1" />
                        <span class="songName">Let me love You</span>
                        <span class="songlistplay"><i id="12" class="far songItemPlay fa-play-circle"></i></span>
                    </div>
                    <div class="songitem">
                        <img src="covers/1.jpg" alt="1" />
                        <span class="songName">Let me love You</span>
                        <span class="songlistplay"><i id="13" class="far songItemPlay fa-play-circle"></i></span>
                    </div>
                    <div class="songitem">
                        <img src="covers/1.jpg" alt="1" />
                        <span class="songName">Let me love You</span>
                        <span class="songlistplay"><i id="14" class="far songItemPlay fa-play-circle"></i></span>
                    </div>
                </div>
            </div>
            <h1>Charlie Puth</h1>
            <asp:Rating ID="Rating5" runat="server" AutoPostBack="true"
            StarCssClass="Star" WaitingStarCssClass="WaitingStar" EmptyStarCssClass="Star"
            FilledStarCssClass="FilledStar">
        </asp:Rating>
        <br />
            <asp:Label ID="Label4" runat="server" Text=""></asp:Label>
        <br />
        <asp:TextBox runat="server" ID="TextBox4" TextMode="MultiLine"></asp:TextBox>
        <br />
        <asp:Button runat="server" Text="Submit Review" ID="Button4" OnClick="Button4_Click" />
            <div class="container">
                <div class="songlist">
                    <div class="songitem">
                        <img src="covers/1.jpg" alt="1" />
                        <span class="songName">Let me love You</span>
                        <span class="songlistplay"><i id="15" class="far songItemPlay fa-play-circle"></i></span>
                    </div>
                    <div class="songitem">
                        <img src="covers/1.jpg" alt="1" />
                        <span class="songName">Let me love You</span>
                        <span class="songlistplay"><i id="16" class="far songItemPlay fa-play-circle"></i></span>
                    </div>
                    <div class="songitem">
                        <img src="covers/1.jpg" alt="1" />
                        <span class="songName">Let me love You</span>
                        <span class="songlistplay"><i id="17" class="far songItemPlay fa-play-circle"></i></span>
                    </div>
                </div>
            </div>
            <h1>Dua Lipa</h1>
            <asp:Rating ID="Rating6" runat="server" AutoPostBack="true"
            StarCssClass="Star" WaitingStarCssClass="WaitingStar" EmptyStarCssClass="Star"
            FilledStarCssClass="FilledStar">
        </asp:Rating>
        <br />
            <asp:Label ID="Label5" runat="server" Text=""></asp:Label>
        <br />
        <asp:TextBox runat="server" ID="TextBox5" TextMode="MultiLine"></asp:TextBox>
        <br />
        <asp:Button runat="server" Text="Submit Review" ID="Button5" OnClick="Button5_Click" />
            <div class="container">
                <div class="songlist">
                    <div class="songitem">
                        <img src="covers/1.jpg" alt="1" />
                        <span class="songName">Let me love You</span>
                        <span class="songlistplay"><i id="18" class="far songItemPlay fa-play-circle"></i></span>
                    </div>
                    <div class="songitem">
                        <img src="covers/1.jpg" alt="1" />
                        <span class="songName">Let me love You</span>
                        <span class="songlistplay"><i id="19" class="far songItemPlay fa-play-circle"></i></span>
                    </div>
                    <div class="songitem">
                        <img src="covers/1.jpg" alt="1" />
                        <span class="songName">Let me love You</span>
                        <span class="songlistplay"><i id="20" class="far songItemPlay fa-play-circle"></i></span>
                    </div>
                </div>
            </div>
            <h1>Billie Elish</h1>
            <asp:Rating ID="Rating7" runat="server" AutoPostBack="true"
            StarCssClass="Star" WaitingStarCssClass="WaitingStar" EmptyStarCssClass="Star"
            FilledStarCssClass="FilledStar">
        </asp:Rating>
        <br />
            <asp:Label ID="Label6" runat="server" Text=""></asp:Label>
        <br />
        <asp:TextBox runat="server" ID="TextBox6" TextMode="MultiLine"></asp:TextBox>
        <br />
        <asp:Button runat="server" Text="Submit Review" ID="Button6" OnClick="Button6_Click" />
            <div class="container">
                <div class="songlist">
                    <div class="songitem">
                        <img src="covers/1.jpg" alt="1" />
                        <span class="songName">Let me love You</span>
                        <span class="songlistplay"><i id="21" class="far songItemPlay fa-play-circle"></i></span>
                    </div>
                    <div class="songitem">
                        <img src="covers/1.jpg" alt="1" />
                        <span class="songName">Let me love You</span>
                        <span class="songlistplay"><i id="22" class="far songItemPlay fa-play-circle"></i></span>
                    </div>
                    <div class="songitem">
                        <img src="covers/1.jpg" alt="1" />
                        <span class="songName">Let me love You</span>
                        <span class="songlistplay"><i id="23" class="far songItemPlay fa-play-circle"></i></span>
                    </div>
                </div>
            </div>
            <h1>The Chainsmoker</h1>
            <asp:Rating ID="Rating8" runat="server" AutoPostBack="true"
            StarCssClass="Star" WaitingStarCssClass="WaitingStar" EmptyStarCssClass="Star"
            FilledStarCssClass="FilledStar">
        </asp:Rating>
        <br />
            <asp:Label ID="Label7" runat="server" Text=""></asp:Label>
        <br />
        <asp:TextBox runat="server" ID="TextBox7" TextMode="MultiLine"></asp:TextBox>
        <br />
        <asp:Button runat="server" Text="Submit Review" ID="Button7" OnClick="Button7_Click" />
            <div class="container">
                <div class="songlist">
                    <div class="songitem">
                        <img src="covers/1.jpg" alt="1" />
                        <span class="songName">Let me love You</span>
                        <span class="songlistplay"><i id="24" class="far songItemPlay fa-play-circle"></i></span>
                    </div>
                    <div class="songitem">
                        <img src="covers/1.jpg" alt="1" />
                        <span class="songName">Let me love You</span>
                        <span class="songlistplay"><i id="25" class="far songItemPlay fa-play-circle"></i></span>
                    </div>
                    <div class="songitem">
                        <img src="covers/1.jpg" alt="1" />
                        <span class="songName">Let me love You</span>
                        <span class="songlistplay"><i id="26" class="far songItemPlay fa-play-circle"></i></span>
                    </div>
                </div>
            </div>
            <h1>DNCE</h1>
            <asp:Rating ID="Rating9" runat="server" AutoPostBack="true"
            StarCssClass="Star" WaitingStarCssClass="WaitingStar" EmptyStarCssClass="Star"
            FilledStarCssClass="FilledStar">
        </asp:Rating>
        <br />
            <asp:Label ID="Label8" runat="server" Text=""></asp:Label>
        <br />
        <asp:TextBox runat="server" ID="TextBox8" TextMode="MultiLine"></asp:TextBox>
        <br />
        <asp:Button runat="server" Text="Submit Review" ID="Button8" OnClick="Button8_Click" />
            <div class="container">
                <div class="songlist">
                    <div class="songitem">
                        <img src="covers/1.jpg" alt="1" />
                        <span class="songName">Let me love You</span>
                        <span class="songlistplay"><i id="27" class="far songItemPlay fa-play-circle"></i></span>
                    </div>
                    <div class="songitem">
                        <img src="covers/1.jpg" alt="1" />
                        <span class="songName">Let me love You</span>
                        <span class="songlistplay"><i id="28" class="far songItemPlay fa-play-circle"></i></span>
                    </div>
                </div>
            </div>
            <h1>Coldplay</h1>
            <asp:Rating ID="Rating10" runat="server" AutoPostBack="true"
            StarCssClass="Star" WaitingStarCssClass="WaitingStar" EmptyStarCssClass="Star"
            FilledStarCssClass="FilledStar">
        </asp:Rating>
        <br />
            <asp:Label ID="Label9" runat="server" Text=""></asp:Label>
        <br />
        <asp:TextBox runat="server" ID="TextBox9" TextMode="MultiLine"></asp:TextBox>
        <br />
        <asp:Button runat="server" Text="Submit Review" ID="Button9" OnClick="Button9_Click" />
            <div class="container">
                <div class="songlist">
                    <div class="songitem">
                        <img src="covers/1.jpg" alt="1" />
                        <span class="songName">Let me love You</span>
                        <span class="songlistplay"><i id="29" class="far songItemPlay fa-play-circle"></i></span>
                    </div>
                    <div class="songitem">
                        <img src="covers/1.jpg" alt="1" />
                        <span class="songName">Let me love You</span>
                        <span class="songlistplay"><i id="30" class="far songItemPlay fa-play-circle"></i></span>
                    </div>
                </div>
            </div>
            <h1>Swae Lee</h1>
            <asp:Rating ID="Rating11" runat="server" AutoPostBack="true"
            StarCssClass="Star" WaitingStarCssClass="WaitingStar" EmptyStarCssClass="Star"
            FilledStarCssClass="FilledStar">
        </asp:Rating>
        <br />
            <asp:Label ID="Label10" runat="server" Text=""></asp:Label>
        <br />
        <asp:TextBox runat="server" ID="TextBox10" TextMode="MultiLine"></asp:TextBox>
        <br />
        <asp:Button runat="server" Text="Submit Review" ID="Button10" OnClick="Button10_Click" />
            <div class="container">
                <div class="songlist">
                    <div class="songitem">
                        <img src="covers/1.jpg" alt="1" />
                        <span class="songName">Let me love You</span>
                        <span class="songlistplay"><i id="31" class="far songItemPlay fa-play-circle"></i></span>
                    </div>
                    <div class="songitem">
                        <img src="covers/1.jpg" alt="1" />
                        <span class="songName">Let me love You</span>
                        <span class="songlistplay"><i id="32" class="far songItemPlay fa-play-circle"></i></span>
                    </div>
                </div>
            </div>
            <h1>One Direction-1D</h1>
            <asp:Rating ID="Rating12" runat="server" AutoPostBack="true"
            StarCssClass="Star" WaitingStarCssClass="WaitingStar" EmptyStarCssClass="Star"
            FilledStarCssClass="FilledStar">
        </asp:Rating>
        <br />
            <asp:Label ID="Label11" runat="server" Text=""></asp:Label>
        <br />
        <asp:TextBox runat="server" ID="TextBox11" TextMode="MultiLine"></asp:TextBox>
        <br />
        <asp:Button runat="server" Text="Submit Review" ID="Button11" OnClick="Button11_Click" />
            <div class="container">
                <div class="songlist">
                    <div class="songitem">
                        <img src="covers/1.jpg" alt="1" />
                        <span class="songName">Let me love You</span>
                        <span class="songlistplay"><i id="33" class="far songItemPlay fa-play-circle"></i></span>
                    </div>
                    <div class="songitem">
                        <img src="covers/1.jpg" alt="1" />
                        <span class="songName">Let me love You</span>
                        <span class="songlistplay"><i id="34" class="far songItemPlay fa-play-circle"></i></span>
                    </div>
                </div>
            </div>
            <h1>Juice WRLD-999</h1>
            <asp:Rating ID="Rating13" runat="server" AutoPostBack="true"
            StarCssClass="Star" WaitingStarCssClass="WaitingStar" EmptyStarCssClass="Star"
            FilledStarCssClass="FilledStar">
        </asp:Rating>
        <br />
            <asp:Label ID="Label12" runat="server" Text=""></asp:Label>
        <br />
        <asp:TextBox runat="server" ID="TextBox12" TextMode="MultiLine"></asp:TextBox>
        <br />
        <asp:Button runat="server" Text="Submit Review" ID="Button12" OnClick="Button12_Click" />
            <div class="container">
                <div class="songlist">
                    <div class="songitem">
                        <img src="covers/1.jpg" alt="1" />
                        <span class="songName">Let me love You</span>
                        <span class="songlistplay"><i id="35" class="far songItemPlay fa-play-circle"></i></span>
                    </div>
                    <div class="songitem">
                        <img src="covers/1.jpg" alt="1" />
                        <span class="songName">Let me love You</span>
                        <span class="songlistplay"><i id="36" class="far songItemPlay fa-play-circle"></i></span>
                    </div>
                </div>
            </div>
            <h1>Justin Bieber</h1>
            <asp:Rating ID="Rating14" runat="server" AutoPostBack="true"
            StarCssClass="Star" WaitingStarCssClass="WaitingStar" EmptyStarCssClass="Star"
            FilledStarCssClass="FilledStar">
        </asp:Rating>
        <br />
            <asp:Label ID="Label13" runat="server" Text=""></asp:Label>
        <br />
        <asp:TextBox runat="server" ID="TextBox13" TextMode="MultiLine"></asp:TextBox>
        <br />
        <asp:Button runat="server" Text="Submit Review" ID="Button13" OnClick="Button13_Click" />
            <div class="container">
                <div class="songlist">
                    <div class="songitem">
                        <img src="covers/1.jpg" alt="1" />
                        <span class="songName">Let me love You</span>
                        <span class="songlistplay"><i id="37" class="far songItemPlay fa-play-circle"></i></span>
                    </div>
                    <div class="songitem">
                        <img src="covers/1.jpg" alt="1" />
                        <span class="songName">Let me love You</span>
                        <span class="songlistplay"><i id="38" class="far songItemPlay fa-play-circle"></i></span>
                    </div>
                </div>
            </div>
            <h1>Aya Nakamura</h1>
            <asp:Rating ID="Rating15" runat="server" AutoPostBack="true"
            StarCssClass="Star" WaitingStarCssClass="WaitingStar" EmptyStarCssClass="Star"
            FilledStarCssClass="FilledStar">
        </asp:Rating>
        <br />
            <asp:Label ID="Label14" runat="server" Text=""></asp:Label>
        <br />
        <asp:TextBox runat="server" ID="TextBox14" TextMode="MultiLine"></asp:TextBox>
        <br />
        <asp:Button runat="server" Text="Submit Review" ID="Button14" OnClick="Button14_Click" />
            <div class="container">
                <div class="songlist">
                    <div class="songitem">
                        <img src="covers/1.jpg" alt="1" />
                        <span class="songName">Let me love You</span>
                        <span class="songlistplay"><i id="39" class="far songItemPlay fa-play-circle"></i></span>
                    </div>
                    <div class="songitem">
                        <img src="covers/1.jpg" alt="1" />
                        <span class="songName">Let me love You</span>
                        <span class="songlistplay"><i id="40" class="far songItemPlay fa-play-circle"></i></span>
                    </div>
                </div>
            </div>
            <h1 class="head">There is Always More</h1>
        </div>
        <div class="bottom">
            <input type="range" name="range" id="ProgressBar" min="0" max="100" />
            <div class="icon">
                <i class="fas fa-2x fa-step-backward" id="previous"></i>
                <i class="far fa-2x fa-play-circle" id="masterPlay"></i>
                <i class="fas fa-2x fa-step-forward" id="next"></i>
            </div>
            <div class="songinfo">
                <img src="playing.gif" width="45px" alt="" id="gif" /><span id="masterSongName"> Let me love you - Justin Bieber</span>
            </div>
        </div>
    </main>
    <script src="Library.js"></script>
    <script src="https://kit.fontawesome.com/d5b2540b36.js" crossorigin="anonymous"></script>
    </div>
    </form>
</body>
</html>
