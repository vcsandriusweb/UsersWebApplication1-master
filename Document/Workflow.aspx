<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Workflow.aspx.cs" Inherits="UsersWebApplication1.Document.Workflow" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container py-2">
        <div class="row justify-content-center">
            <div class="col-9">
                <p class="user-welcome-text">
                    Welcome <strong> <%: Session["fullName"].ToString()  %></strong>.<br />
                    Here's where you create your desired sales content
                </p>
            </div>
        </div>
    </div>
    <div class="container workflow-content">
        <div class="container py-2 workflow-progress-nav">
            <div class="row justify-content-center">
                <div class="col-12">
                    <div class="btn-toolbar" role="toolbar">
                        <div class="btn-group mr-2" role="group" aria-label="First group">
                            <button type="button" class="btn btn-circle btn-sm badge-secondary">1</button>
                            <button type="button" class="btn btn-circle btn-sm">2</button>
                            <button type="button" class="btn btn-circle btn-sm">3</button>
                            <button type="button" class="btn btn-circle btn-sm">4</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="container py-2 workflow-content-assets">
            <div class="row">
                <div class="col">
                    <span class="col-form-label-sm" style="font-size: 20px">Choose the asset type you want to create</span><br />
                    <hr>
                    <div class="btn-group-vertical mr-2" role="group" aria-label="First group">
                        <asp:Button  class="btn btn-secondary" ID="btnPDFDocument" runat="server" Text="PDF document" onclick="btnPDFDocument_Click"/>
                        <asp:Button  class="btn btn-secondary" ID="btnHTMLEmail" runat="server" Text="HTML email" OnClick="btnHTMLEmail_Click"/>
                        <asp:Button  class="btn btn-secondary" ID="btnWebsiteLandingPage" runat="server" Text="Website landing page" OnClick="btnWebsiteLandingPage_Click" />
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
