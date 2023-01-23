<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Workflow4.aspx.cs" Inherits="UsersWebApplication1.Document.Workflow4" ValidateRequest="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <script type="text/javascript">
        function LimitCharacters(txtMsg, CharLength, indicator) {
            chars = txtMsg.value.length;
            document.getElementById(indicator).innerHTML = CharLength - chars;
            if (chars > CharLength) {
                txtMsg.value = txtMsg.value.substring(0, CharLength);
            }
        }
    </script>
    <div class="container py-2">
        <div class="row justify-content-center">
            <div class="col-9">
                <p class="user-welcome-text">
                    Welcome <b><%: Session["fullName"].ToString() %></b>.<br />
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
                            <button type="button" class="btn btn-circle btn-sm">1</button>
                            <button type="button" class="btn btn-circle btn-sm">2</button>
                            <button type="button" class="btn btn-circle btn-sm">3</button>
                            <button type="button" class="btn btn-circle btn-sm badge-secondary">4</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="container py-2 workflow-content-assets">
            <div class="row">
                <div class="col">
                    <div>
                        <span class="col-form-label-sm" style="font-size: 20px">Choose your design</span><br />
                        <span class="col-form-label-sm" style="font-size: 12px">Topic:</span>
                        <asp:Label ID="lblContent" runat="server" Style="font-size: 12px" ForeColor="Red" Font-Bold="true" class="form-label form-control-sm"></asp:Label>
                        <br />
                        <span class="col-form-label-sm" style="font-size: 12px">Design:</span>
                        <asp:Label ID="lblDesign" runat="server" Style="font-size: 12px" ForeColor="Red" Font-Bold="true" class="form-label form-control-sm"></asp:Label>
                    </div>
                    <div style="margin-left: 950px;">
                        <asp:HyperLink runat="server" ID="HyperLink1" Style="font-size: 14px" class="btn btn-outline-danger btn-sm btn-back" NavigateUrl="~/Document/Workflow3.aspx">< Back</asp:HyperLink>
                    </div>
                </div>
            </div>
        </div>
        <hr>
        <div class="container py-2 user-input">
            <div class="row">
                <div class="col-6">
                    <span class="col-form-label-sm" style="font-size: 18px">1. Front cover headline</span>
                    <br />
                    <asp:TextBox ID="txtFrontCoverHeadline" runat="server" TextMode="MultiLine" Rows="4" Columns="40"
                        MaxLength="70" onkeyup="LimitCharacters(this,70,'lblFrontCoverHeadline');">
                    </asp:TextBox><br />
                    <span class="col-form-label-sm" style="font-size: 12px">
                        <label id="lblFrontCoverHeadline">70</label>&nbsp;characters left
                    </span>
                </div>
                <div class="col-6">
                    <span class="col-form-label-sm" style="font-size: 18px">Example cover</span>
                    <br />
                    <img src="../Images/fujitsu-img-workflow4-example-1.png" />
                    <br />
                    <span class="col-form-label-sm" style="font-size: 12px">This visual is for example purposes only it may not match the design<br />
                        you have chosen</span>
                </div>
            </div>
            <div class="row">
                <div class="col-6">
                    <span class="col-form-label-sm" style="font-size: 18px">2. Front cover subheading</span>
                    <br />
                    <asp:TextBox ID="txtFrontCoverSubheading" Rows="3" Columns="40" runat="server" TextMode="MultiLine"
                        MaxLength="140" onkeyup="LimitCharacters(this,140,'lblFrontCoverSubheading');">
                    </asp:TextBox><br />
                    <span class="col-form-label-sm" style="font-size: 12px">
                        <label id="lblFrontCoverSubheading">140</label>&nbsp;characters left
                    </span>
                </div>
                <div class="col-6">
                    <%--TODO--%>
                </div>
            </div>
            <hr>
            <div class="row">
                <div class="col-6">
                    <span class="col-form-label-sm" style="font-size: 18px">3. Inside front cover copy</span>
                    <br />
                    <asp:TextBox ID="txtInsideFrontCoverCopy" runat="server" TextMode="MultiLine" Rows="10" Columns="40"
                        MaxLength="1000" onkeyup="LimitCharacters(this,1000,'lblInsideFrontCoverCopy');">
                    </asp:TextBox><br />
                    <span class="col-form-label-sm" style="font-size: 12px">
                        <label id="lblInsideFrontCoverCopy">1000</label>&nbsp;characters left
                    </span>
                </div>
                <div class="col-6">
                    <span class="col-form-label-sm" style="font-size: 18px">Example inside front cover</span>
                    <br />
                    <img src="../Images/fujitsu-img-workflow4-example.png" />
                    <br />
                    <span class="col-form-label-sm" style="font-size: 12px">This visual is for example purposes only it may not match the design<br />
                        you have chosen</span>
                </div>
            </div>
            <hr>
            <div class="row">
                <div class="col-6">
                    <span class="col-form-label-sm" style="font-size: 18px">4. Back cover copy</span>
                    <br />
                    <asp:TextBox ID="txtBackCoverCopy" runat="server" TextMode="MultiLine" Rows="8" Columns="40"
                        MaxLength="600" onkeyup="LimitCharacters(this,600,'lblBackCoverCopy');">
                    </asp:TextBox><br />
                    <span class="col-form-label-sm" style="font-size: 12px">
                        <label id="lblBackCoverCopy">600</label>&nbsp;characters left
                    </span>
                </div>
                <div class="col-6">
                    <span class="col-form-label-sm" style="font-size: 18px">Example back cover</span>
                    <br />
                    <img src="../Images/fujitsu-img-workflow4-example-2.png" />
                    <br />
                    <span class="col-form-label-sm" style="font-size: 12px">This visual is for example purposes only it may not match the design<br />
                        you have chosen</span>
                </div>
            </div>
            <div class="row">
                <div class="col-6">
                    <span class="col-form-label-sm" style="font-size: 18px">5. Back cover link</span>
                    <br />
                    <asp:TextBox ID="txtBackCoverLink" runat="server" TextMode="MultiLine" Rows="3" Columns="40"
                        MaxLength="100" onkeyup="LimitCharacters(this,100,'lblBackCoverLink');">
                    </asp:TextBox><br />
                    <span class="col-form-label-sm" style="font-size: 12px">
                        <label id="lblBackCoverLink">100</label>&nbsp;characters left
                    </span>

                </div>
                <div class="col-6">
                    <%--TODO--%>
                </div>
            </div>
            <hr>
        </div>
        <div class="container">
            <div class="row align-items-start">
                <div class="col-sm-2">
                    <asp:HyperLink runat="server" ID="BackHyperLink" Style="font-size: 14px" class="btn btn-outline-danger btn-sm btn-back" NavigateUrl="~/Document/Workflow3.aspx">< Back</asp:HyperLink>
                </div>
                <div class="col-sm">
                    <asp:Button runat="server" ID="btnPreview" OnClick="btnPreview_Click" Style="font-size: 14px" Text="Preview and finish >" class="btn btn-danger btn-sm btn-forward" />
                </div>

            </div>
        </div>
    </div>
</asp:Content>
