<%@ Page Title="Log in" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="UsersWebApplication1.Account.Login" Async="true" %>

<%@ Register Src="~/Account/OpenAuthProviders.ascx" TagPrefix="uc" TagName="OpenAuthProviders" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">

    <section
    style="background-image: url('../Images/7935-14-FJ_SB_H.png');background-size:cover;height:100vh;">

        <div class="container py-5">
            <div class="row d-flex justify-content-center align-items-center h-100">
                <div class="col-12 col-md-8 col-lg-6 col-xl-6">
                    <div class="card shadow-2-strong" style="border-radius: 1rem;">
                        <div class="card-body p-5 text-center">
                            <div class="form-outline mb-4">
                                <img runat="server" src="~/Images/FJ%20Logo%20Red%20RGB.png" alt="logo" />
                            </div>
                            <div class="form-outline mb-4">
                                <p>Welcome to the Fujitsu sales toolkit platform, please login</p>
                                <asp:PlaceHolder runat="server" ID="ErrorMessage" Visible="false">
                                    <p class="text-danger">
                                        <asp:Literal runat="server" ID="FailureText" />
                                    </p>
                                </asp:PlaceHolder>
                            </div>
                            <hr>
                            <div class="form-outline mb-4 user-input">
                                <div class="container">
                                    <div class="row align-items-start">
                                        <asp:Label runat="server" AssociatedControlID="Email" Style="font-size: 11px" class="form-label form-control-sm">Email</asp:Label>
                                    </div>
                                </div>
                                <div class="container">
                                    <div class="row align-items-start">
                                        <asp:TextBox runat="server" ID="Email" class="form-control form-control-lg" TextMode="Email" />
                                        <asp:RequiredFieldValidator runat="server" ControlToValidate="Email"
                                            class="text-danger" ErrorMessage="The email field is required." />
                                    </div>
                                </div>
                            </div>
                            <div class="form-outline mb-4 user-input">
                                <div class="container">
                                    <div class="row align-items-start">
                                        <asp:Label runat="server" AssociatedControlID="Password" Style="font-size: 11px" class="form-label form-control-sm">Password</asp:Label>
                                    </div>
                                </div>
                                <div class="container">
                                    <div class="row align-items-start">
                                        <asp:TextBox runat="server" ID="Password" TextMode="Password" class="form-control form-control-lg" />
                                        <asp:RequiredFieldValidator runat="server" ControlToValidate="Password" class="text-danger" ErrorMessage="The password field is required." />
                                    </div>
                                </div>
                            </div>
                            <div class="form-outline mb-4 user-input">
                                <div class="container">
                                    <div class="row align-items-start">
                                        <asp:HyperLink runat="server" NavigateUrl="~/Account/Forgot.aspx" ID="ForgotPassword" Style="font-size: 11px; color: #c82333; text-decoration: underline;" class="btn-link-red btn-sm" ViewStateMode="Disabled">Forgot password?</asp:HyperLink>
                                    </div>
                                </div>
                            </div>
                            <div class="form-outline mb-4">
                                <div class="container">
                                    <div class="row align-items-start user-form-button-container">
                                        <div class="col-sm">
                                            <asp:HyperLink runat="server" ID="RegisterHyperLink" Style="font-size: 11px; font-weight: 700;" class="btn btn-outline-danger btn-sm" ViewStateMode="Disabled">New user - create account</asp:HyperLink>
                                        </div>
                                        <div class="col-sm btn-arrow-container">
                                            <asp:Button runat="server" OnClick="LogIn" Style="font-size: 11px; font-weight: 700;" Text="Log in >" class="btn btn-danger btn-sm icon" />
                                        </div>

                                    </div>
                                </div>
                            </div>
                            <%--<div class="form-outline mb-4">
                                <div class="container">
                                    <div class="row align-items-start">
                                        <div class="form-check-input">
                                            <asp:CheckBox runat="server" ID="RememberMe"  />
                                            <asp:Label runat="server" AssociatedControlID="RememberMe" style="font-size: 11px" class="btn-link-red btn-sm">Remember me?</asp:Label>
                                        </div>
                                    </div>
                                </div>
                            </div>--%>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

</asp:Content>
