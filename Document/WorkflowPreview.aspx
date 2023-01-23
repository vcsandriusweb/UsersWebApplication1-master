<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WorkflowPreview.aspx.cs" Inherits="UsersWebApplication1.Document.WorkflowPreview" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container py-2">
        <div class="row justify-content-center">
            <div class="col-9">
                <p class="user-welcome-text">
                    Welcome <b> <%: Session["fullName"].ToString()   %></b>.<br />
                    Here's where you create your desired sales content
                </p>
            </div>
        </div>
    </div>
    <div class="container workflow-content">
        <div class="container py-2">
            <div class="row justify-content-start">
                <div class="col-1">
                    <span class="col-form-label-sm text-nowrap" style="font-size: 20px">You're all set</span>
                </div>
            </div>
        </div>
        <hr>
        <div class="container py-2">
            <div class="row">
                <div class="col-3">
                <asp:Button runat="server" ID="btnViewPreview" OnClick="btnViewPreview_Click"
                    Style="font-size: 14px" Text="View preview >" class="btn btn-danger btn-sm" />
                </div>
                <div class="col-3">
                    <asp:Button runat="server" ID="btnDownload" OnClick="btnDownload_Click"
                        Style="font-size: 14px" Text="Download the file >" class="btn btn-danger btn-sm" />
                    <asp:Button runat="server" ID="btnDownloadHTML" OnClick="btnDownloadHTML_Click" Visible="false"
                        Style="font-size: 14px" Text="Download the HTML file >" class="btn btn-danger btn-sm" />
                </div>
            </div>
        </div>
    </div>
    <script>
        $(document).ready(function () {
            $("#MainContent_btnDownload").click(function () {
                alert("The file will be in your Downloads folder shortly.");
            });
        });
    </script>

</asp:Content>
