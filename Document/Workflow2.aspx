<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Workflow2.aspx.cs" Inherits="UsersWebApplication1.Document.Workflow2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container py-2">
        <div class="row justify-content-center">
            <div class="col-9">
                <p class="user-welcome-text">
                    Welcome <b><%:Session["fullName"].ToString() %></b>.<br />
                    Here’s where you create your desired sales content
                </p>
            </div>
        </div>
    </div>
    <div class="container workflow-content">
        <div class="container py-2 workflow-progress-nav">
            <div class="row justify-content-center">
                <div class="col-1">
                    <div class="btn-toolbar" role="toolbar">
                        <div class="btn-group mr-2" role="group" aria-label="First group">
                            <button type="button" class="btn btn-circle btn-sm">1</button>
                            <button type="button" class="btn btn-circle btn-sm badge-secondary">2</button>
                            <button type="button" class="btn btn-circle btn-sm">3</button>
                            <button type="button" class="btn btn-circle btn-sm">4</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="container py-2  workflow-content-assets">
            <div class="row">
                <div class="col">
                    <div>
                        <span class="col-form-label-sm" style="font-size: 20px">Choose the topic area for your asset</span>
                    </div>
                    <div style="margin-left: 950px;">
                        <asp:HyperLink runat="server" ID="HyperLink1" Style="font-size: 14px" class="btn btn-outline-danger btn-sm btn-back" NavigateUrl="~/Document/Workflow.aspx">< Back</asp:HyperLink>
                    </div>
                    <hr>
                    <asp:RadioButtonList ID="rblContent" runat="server">
                        <asp:ListItem Value="BusinessAgility" Selected="True">Business Agility</asp:ListItem>
                        <asp:ListItem Value="CloudManagement">Cloud Management</asp:ListItem>
                        <asp:ListItem Value="CostOptimization">Cost Optimization</asp:ListItem>
                        <asp:ListItem Value="DigitalTransformation">Digital Transformation</asp:ListItem>
                        <asp:ListItem Value="CloudSecurityResilience">Cloud Security Resilience</asp:ListItem>
                    </asp:RadioButtonList>
                </div>
            </div>
        </div>
        <div class="container py-2 user-input">
            <div class="row">
                <div class="col">
                    <span class="col-form-label-sm" style="font-size: 16px; font-weight: 700; padding-bottom: 10px">Name your asset</span><br />
                    <asp:TextBox runat="server" ID="txtAssetName" class="form-control form-control-lg" Style="width: 100%; max-width: 100%; margin-top: 10px;" />
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="txtAssetName"
                        CssClass="text-danger" ErrorMessage="The asset name field is required." />
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row align-items-start user-form-button-container" style="padding-left: 15px; padding-right: 15px;">
                <div style="margin-right: 20px;">
                    <asp:HyperLink runat="server" ID="BackHyperLink" Style="font-size: 14px" class="btn btn-outline-danger btn-sm btn-back" NavigateUrl="~/Document/Workflow.aspx">< Back</asp:HyperLink>
                </div>
                <div>
                    <asp:Button runat="server" ID="btnConfirm" OnClick="btnConfirm_Click" Style="font-size: 14px" Text="Confirm >" class="btn btn-danger btn-sm btn-forward" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>
