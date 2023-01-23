<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DigitalTransformation.aspx.cs" Inherits="UsersWebApplication1.Document.Views.DigitalTransformation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link runat="server" rel="stylesheet" href="http://hybridcustomization.com/Content/customfonts.css" />
    <style>
        .container {
            position: relative;
            text-align: center;
            color: white;
        }

        .front-cover-headline {
            position: absolute;
            top: 450px;
            left: 120px;
            font-family: "FujitsuInfinityPro-Bolder", Helvetica, Arial;
            font-weight: bolder;
            font-style: normal;
            font-size: 110px;
            width: 1100px;
            text-align:start;
        }

        .front-cover-subheading {
            position: absolute;
            top: 2200px;
            left: 120px;
            font-family: "FujitsuInfinityPro-Bold", Helvetica, Arial;
            font-weight: normal;
            font-style: normal;
            font-size: 50px;
            width: 1100px;
            text-align:start;
        }

        .inside-front-cover-copy {
            position: absolute;
            top: 3000px;
            left: 170px;
            font-family: "FujitsuInfinityPro-Regular", Helvetica, Arial;
            font-weight: normal;
            font-style: normal;
            font-size: 60px;
            color: black;
            width: 2000px;
            text-align:start;
        }

        .back-cover-copy {
            position: absolute;
            bottom: 1625px;
            left: 120px;
            font-family: "FujitsuInfinityPro-Regular", Helvetica, Arial;
            font-weight: normal;
            font-style: normal;
            font-size: 45px;
            color: black;
            text-align:start;
        }

        .back-cover-link {
            position: absolute;
            bottom: 875px;
            left: 120px;
            font-family: "FujitsuInfinityPro-Bold", Helvetica, Arial;
            font-weight: bold;
            font-style: normal;
            font-size: 45px;
            color: black;
            text-align:start;
        }
    </style>
</head>
<body style="margin:0;">
    <form id="form1" runat="server">
        <div class="container">
            <img runat="server" id="imgSlide1" width="3508" height="2478" style="vertical-align:bottom" />
            <img runat="server" id="imgSlide2" width="3508" height="2478" style="vertical-align:bottom" />
            <img runat="server" id="imgSlide3" width="3508" height="2478" style="vertical-align:bottom" />
            <img runat="server" id="imgSlide4" width="3508" height="2478" style="vertical-align:bottom" />
            <img runat="server" id="imgSlide5" width="3508" height="2478" style="vertical-align:bottom" />
            <img runat="server" id="imgSlide6" width="3508" height="2478" style="vertical-align:bottom" />
            <img runat="server" id="imgSlide7" width="3508" height="2478" style="vertical-align:bottom" />
            <div class="front-cover-headline">
                <asp:Label ID="lblFrontCoverHeadline" runat="server" Text="FrontCoverHeadline"></asp:Label>
            </div>
            <div class="front-cover-subheading">
                <asp:Label ID="lblFrontCoverSubheading" runat="server" Text="FrontCoverSubheading"></asp:Label>
            </div>
            <div class="inside-front-cover-copy">
                <asp:Label ID="lblInsideFrontCoverCopy" runat="server" Text="InsideFrontCoverCopy"></asp:Label>
            </div>
            <div class="back-cover-copy">
                <asp:Label ID="lblBackCoverCopy" runat="server" Text="BackCoverCopy"></asp:Label>
            </div>
            <div class="back-cover-link">
                <asp:Label ID="lblBackCoverLink" runat="server" Text="BackCoverLink"></asp:Label>
            </div>
        </div>
    </form>
</body>
</html>
