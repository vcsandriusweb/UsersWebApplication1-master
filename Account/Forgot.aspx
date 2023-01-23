<%@ Page Title="Forgot password" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Forgot.aspx.cs" Inherits="UsersWebApplication1.Account.ForgotPassword" Async="true" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <section class="vh-200"
        style="background-image: url('../Images/7935-14-FJ_SB_H.png'); height:100vh;">

        <div class="container py-5 h-100">
            <div class="row d-flex justify-content-center align-items-center h-100">
                <div class="col-12 col-md-8 col-lg-6 col-xl-6">
                    <div class="card shadow-2-strong" style="border-radius: 1rem;">
                        <div class="card-body p-5 text-center">
                            <div class="form-outline mb-4">
                                <img runat="server" src="~/Images/FJ%20Logo%20Red%20RGB.png" alt="logo" />
                            </div>
                            <h2><%: Title %>.</h2>
                            <asp:PlaceHolder id="loginForm" runat="server">
                                <div class="form-horizontal">
                                    <p>Forgot your password?</p>
                                    <hr />
                                    <asp:PlaceHolder runat="server" ID="ErrorMessage" Visible="false">
                                        <p class="text-danger">
                                            <asp:Literal runat="server" ID="FailureText" />
                                        </p>
                                    </asp:PlaceHolder>
                                    <div class="form-group form-outline mb-4 user-input">
                                        <div class="container">
                                            <div class="row align-items-start">
                                                <asp:Label runat="server" AssociatedControlID="Email" CssClass="control-label">Email</asp:Label>
                                            </div>
                                        </div>
                                        <div class="container">
                                            <div class="row align-items-start">
                                                <asp:TextBox runat="server" ID="Email" CssClass="form-control" TextMode="Email" />
                                            </div>
                                        </div>
                                        <div class="container">
                                            <div class="row align-items-start">
                                                <asp:RequiredFieldValidator runat="server" ControlToValidate="Email"
                                                CssClass="text-danger" ErrorMessage="The email field is required." />
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group form-outline mb-4">
                                        <div class="container">
                                            <div class="row align-items-start user-form-button-container">
                                                <asp:Button runat="server" OnClick="Forgot" Text="Email Link" CssClass="btn btn-default btn-danger btn-sm icon" />
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </asp:PlaceHolder>
                            <asp:PlaceHolder runat="server" ID="DisplayEmail" Visible="false">
                                <p class="text-info">
                                    Please check your email to reset your password.
                                </p>
                            </asp:PlaceHolder>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
