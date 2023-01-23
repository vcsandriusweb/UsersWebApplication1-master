<%@ Page Title="Reset Password" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ResetPassword.aspx.cs" Inherits="UsersWebApplication1.Account.ResetPassword" Async="true" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <section class="vh-200"
    style="background-image: url('../Images/7935-14-FJ_SB_H.png');background-size:cover;height:100vh;">

    <div class="container py-5 h-100">
        <div class="row d-flex justify-content-center align-items-center h-100">
            <div class="col-12 col-md-8 col-lg-6 col-xl-6">
                <div class="card shadow-2-strong" style="border-radius: 1rem;">
                    <div class="card-body p-5 text-center">
                        <div class="form-outline mb-4">
                            <img runat="server" src="~/Images/FJ%20Logo%20Red%20RGB.png" alt="logo" />
                        </div>
    <h2><%: Title %>.</h2>
    <p class="text-danger">
        <asp:Literal runat="server" ID="ErrorMessage" />
    </p>

    <div class="form-horizontal">
        <p>Enter your new password</p>
        <hr />
        <asp:ValidationSummary runat="server" CssClass="text-danger" />
        <div class="form-group form-outline mb-4 user-input">
            <div class="container">
                <div class="row align-items-start">
                    <asp:Label runat="server" AssociatedControlID="Email" style="font-size: 11px;" class="form-label control-label form-control-sm">Email</asp:Label>
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
        <div class="form-group form-outline mb-4 user-input">
            <div class="container">
                <div class="row align-items-start">
                    <asp:Label runat="server" AssociatedControlID="Password" style="font-size: 11px;" class="form-label control-label form-control-sm">Password</asp:Label>
                </div>
            </div>
            <div class="container">
                <div class="row align-items-start">
                    <asp:TextBox runat="server" ID="Password" TextMode="Password" CssClass="form-control" />
                </div>
            </div>
            <div class="container">
                <div class="row align-items-start">
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="Password"
                        CssClass="text-danger" ErrorMessage="The password field is required." />
                </div>
            </div>
        </div>
        <div class="form-group form-outline mb-4 user-input">
            <div class="container">
                <div class="row align-items-start">
                    <asp:Label runat="server" AssociatedControlID="ConfirmPassword" style="font-size: 11px;" class="form-label control-label form-control-sm">Confirm password</asp:Label>
                </div>
            </div>
            <div class="container">
                <div class="row align-items-start">
                    <asp:TextBox runat="server" ID="ConfirmPassword" TextMode="Password" CssClass="form-control" />
                </div>
            </div>
            <div class="container">
                <div class="row align-items-start">
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="ConfirmPassword"
                    CssClass="text-danger" Display="Dynamic" ErrorMessage="The confirm password field is required." />
                </div>
            </div>
            <div class="container">
                <div class="row align-items-start">
                    <asp:CompareValidator runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword"
                    CssClass="text-danger" Display="Dynamic" ErrorMessage="The password and confirmation password do not match." />
                </div>
            </div>
        </div>
        <div class="form-group form-outline mb-4">
            <div class="container">
                <div class="row align-items-start user-form-button-container">
                    <asp:Button runat="server" OnClick="Reset_Click" Text="Reset" Style="font-size: 11px; font-weight: 700;" class="btn btn-default btn-danger btn-sm icon" />
                </div>
            </div>
        </div>
    </div>

    </div>
    </div>
    </div>
    </div>
    </div>
    </section>
</asp:Content>
