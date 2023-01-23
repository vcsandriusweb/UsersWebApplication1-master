<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WorkflowPreview.aspx.cs" Inherits="UsersWebApplication1.Document.WorkflowPreview" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        .preview-button {
            position: absolute;
            top: 130px;
            left: 70px;
        }
    </style>
    <div class="container py-2">
        <div class="row justify-content-center">
            <div class="col-9">
                <p class="user-welcome-text">
                    Welcome <b><%: Session["fullName"].ToString()   %></b>.<br />
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
                <div class="col-6">
                    <img runat="server" id="imgPreview" src="../Images/Shared/Thumbnail/1/Slide1.PNG" width="280" alt="img1" style="margin-right: 50px;" /><br />
                    <div class="preview-button">
                        <asp:Button runat="server" ID="btnViewPreview" OnClick="btnViewPreview_Click"
                            Style="font-size: 14px" Text="View preview >" class="btn btn-danger btn-sm" />
                    </div>
                </div>
                <div class="col-6">
                    Your asset is ready. Please check the<br />
                    preview, save for later or download the file<br />
                    <br />
                    <asp:TextBox runat="server" ID="txtAssetName" class="form-control form-control-lg" Style="width: 100%; max-width: 100%; margin-top: 10px;" /><br />
                    <br />
                    <asp:Button runat="server" ID="btnDownload" OnClick="btnDownload_Click"
                        Style="font-size: 14px" Text="Download the file >" class="btn btn-danger btn-sm" />

                </div>
            </div>
    </div>
        <hr>
        <div class="container py-2">
            <div class="row">
                <div class="col">
                    Want to go back and edit or amend something? No worries<br /><br />
                    <asp:HyperLink runat="server" ID="HyperLink1" Style="font-size: 14px" class="btn btn-sm" NavigateUrl="~/Document/Workflow4.aspx">< Back</asp:HyperLink>
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

