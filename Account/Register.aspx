<%@ Page Title="Register" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="UsersWebApplication1.Account.Register" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <section class="vh-200"
        style="background-image: url('../Images/7935-14-FJ_SB_H.png'); height:200vh;">

        <div class="container py-5 h-100">
            <div class="row d-flex justify-content-center align-items-center h-100">
                <div class="col-12 col-md-8 col-lg-6 col-xl-6">
                    <div class="card shadow-2-strong" style="border-radius: 1rem;">
                        <div class="card-body p-5 text-center">
                            <div class="form-outline mb-4">
                                <img runat="server" src="~/Images/FJ%20Logo%20Red%20RGB.png" alt="logo" />
                            </div>
                            <div class="form-outline mb-4">
                                <p>Create your account</p>

                                <p class="text-danger">
                                    <asp:Literal runat="server" ID="ErrorMessage" />
                                    <asp:ValidationSummary runat="server" CssClass="text-danger" />
                                </p>
                            </div>
                            <hr>
                            <div class="form-outline mb-4 user-input">
                                <div class="container">
                                    <div class="row align-items-start">
                                        <asp:Label runat="server" AssociatedControlID="FirstName" style="font-size: 11px" class="form-label form-control-sm">First Name</asp:Label>
                                    </div>
                                </div>
                                <div class="container">
                                    <div class="row align-items-start">
                                        <asp:TextBox runat="server" ID="FirstName" class="form-control form-control-lg" />
                                        <asp:RequiredFieldValidator runat="server" ControlToValidate="FirstName"
                                            CssClass="text-danger" ErrorMessage="The first name field is required." />
                                    </div>
                                </div>
                            </div>
                            <div class="form-outline mb-4 user-input">
                                <div class="container">
                                    <div class="row align-items-start">
                                        <asp:Label runat="server" AssociatedControlID="Surname" style="font-size: 11px" class="form-label form-control-sm">Surname</asp:Label>
                                    </div>
                                </div>
                                <div class="container">
                                    <div class="row align-items-start">
                                        <asp:TextBox runat="server" ID="Surname" class="form-control form-control-lg" />
                                        <asp:RequiredFieldValidator runat="server" ControlToValidate="Surname"
                                            CssClass="text-danger" ErrorMessage="The surname field is required." />
                                    </div>
                                </div>
                            </div>
                            <div class="form-outline mb-4 user-input">
                                <div class="container">
                                    <div class="row align-items-start">
                                        <asp:Label runat="server" AssociatedControlID="Email" style="font-size: 11px" class="form-label form-control-sm">Email</asp:Label>
                                    </div>
                                </div>
                                <div class="container">
                                    <div class="row align-items-start">
                                        <asp:TextBox runat="server" ID="Email" class="form-control form-control-lg" TextMode="Email" />
                                        <asp:RequiredFieldValidator runat="server" ControlToValidate="Email"
                                            CssClass="text-danger" ErrorMessage="The email field is required." />
                                    </div>
                                </div>
                            </div>
                            <div class="form-outline mb-4 user-input">
                                <div class="container">
                                    <div class="row align-items-start">
                                        <asp:Label runat="server" AssociatedControlID="Password" style="font-size: 11px" class="form-label form-control-sm">Password</asp:Label>
                                    </div>
                                </div>
                                <div class="container">
                                    <div class="row align-items-start">
                                        <asp:TextBox runat="server" ID="Password" TextMode="Password" class="form-control form-control-lg" />
                                        <asp:RequiredFieldValidator runat="server" ControlToValidate="Password"
                                            CssClass="text-danger" ErrorMessage="The password field is required." />
                                    </div>
                                </div>
                            </div>
                            <div class="form-outline mb-4 user-input">
                                <div class="container">
                                    <div class="row align-items-start">
                                        <asp:Label runat="server" AssociatedControlID="ConfirmPassword" style="font-size: 11px" class="form-label form-control-sm">Confirm password</asp:Label>
                                    </div>
                                </div>
                                <div class="container">
                                    <div class="row align-items-start">
                                        <asp:TextBox runat="server" ID="ConfirmPassword" TextMode="Password" class="form-control form-control-lg" />
                                        <asp:RequiredFieldValidator runat="server" ControlToValidate="ConfirmPassword"
                                            CssClass="text-danger" Display="Dynamic" ErrorMessage="The confirm password field is required." />
                                        <asp:CompareValidator runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword"
                                            CssClass="text-danger" Display="Dynamic" ErrorMessage="The password and confirmation password do not match." />
                                    </div>
                                </div>
                            </div>
                            <div class="form-outline mb-4">
                                <div class="container">
                                    <div class="row align-items-start user-form-button-container">
                                         <div class="col-sm">
                                            <asp:HyperLink runat="server" ID="RegisteredHyperLink" style="font-size: 11px" class="btn btn-outline-danger btn-sm" ViewStateMode="Disabled" NavigateUrl="~/Account/Login.aspx">Already registered?</asp:HyperLink>
                                        </div>
                                        <div class="col-sm">
                                            <asp:Button runat="server" OnClick="CreateUser_Click" Text="Register >" style="font-size: 11px" class="btn btn-danger btn-sm" />
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
