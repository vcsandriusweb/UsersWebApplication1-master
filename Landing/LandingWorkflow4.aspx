<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="LandingWorkflow4.aspx.cs" Inherits="UsersWebApplication1.Landing.LandingWorkflow4" %>

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
        <div class="container py-2  workflow-progress-nav">
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
        <div class="container py-2">
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
                        <asp:HyperLink runat="server" ID="HyperLink1" Style="font-size: 14px" class="btn btn-outline-danger btn-sm" NavigateUrl="~/Landing/LandingWorkflow3.aspx">< Back</asp:HyperLink>
                    </div>
                </div>
            </div>
        </div>
        <hr>
        <div class="container py-2 user-input">
            <div class="row">
                <div class="col-6">
                    <span class="col-form-label-sm" style="font-size: 12px">1. Custom headline</span>
                    <br />
                    <asp:TextBox ID="txtCustomHeadline" Columns="40" runat="server" TextMode="MultiLine" Rows="3"
                        MaxLength="240" onkeyup="LimitCharacters(this,240,'lblCustomHeadline');">
                    </asp:TextBox><br />
                    <span class="col-form-label-sm" style="font-size: 10px">
                        <label id="lblCustomHeadline">240</label>&nbsp;characters left
                    </span>
                </div>
                <div class="col-6">
                    <span class="col-form-label-sm" style="font-size: 12px">Example cover</span>
                    <br />
                    <img src="../Images/email-example-1.png" width="400" />
                    <br />
                    <span class="col-form-label-sm" style="font-size: 12px">This visual is for example purposes only it may not match the design<br />
                        you have chosen</span>
                </div>
            </div>
            <div class="row">
                <div class="col-6">
                    <span class="col-form-label-sm" style="font-size: 12px">2. Custom your headline</span>
                    <br />
                    <asp:TextBox ID="txtCustomYourHeadline" runat="server" Columns="40" TextMode="MultiLine" Rows="4"
                        MaxLength="240" onkeyup="LimitCharacters(this,240,'lblCustomYourHeadline');">
                    </asp:TextBox><br />
                    <span class="col-form-label-sm" style="font-size: 10px">
                        <label id="lblCustomYourHeadline">240</label>&nbsp;characters left
                    </span>
                </div>
                <div class="col-6">
                    <%--TODO--%>
                </div>
            </div>
            <hr>
            <div class="row">
                <div class="col-6">
                    <span class="col-form-label-sm" style="font-size: 12px">3. Custom your CTA headline</span>
                    <br />
                    <asp:TextBox ID="txtCustomYourCTAHeadline" runat="server" Columns="40" TextMode="MultiLine" Rows="10"
                        MaxLength="600" onkeyup="LimitCharacters(this,600,'lblCustomYourCTAHeadline');">
                    </asp:TextBox><br />
                    <span class="col-form-label-sm" style="font-size: 10px">
                        <label id="lblCustomYourCTAHeadline">600</label>&nbsp;characters left
                    </span>
                </div>
                <div class="col-6">
                    <span class="col-form-label-sm" style="font-size: 12px">Example cover</span>
                    <br />
                    <img src="../Images/email-example-2.png" width="400" />
                    <br />
                    <span class="col-form-label-sm" style="font-size: 12px">This visual is for example purposes only it may not match the design<br />
                        you have chosen</span>
                </div>
            </div>
            <div class="row">
                <div class="col-6">
                    <span class="col-form-label-sm" style="font-size: 12px">4. Job title</span>
                    <br />
                    <asp:TextBox ID="txtJobTitle" runat="server" Columns="40" TextMode="MultiLine" Rows="1"
                        MaxLength="300" onkeyup="LimitCharacters(this,300,'lblJobTitle');">
                    </asp:TextBox><br />
                    <span class="col-form-label-sm" style="font-size: 10px">
                        <label id="lblJobTitle">300</label>&nbsp;characters left
                    </span>
                </div>
                <div class="col-6">
                    <%--TODO--%>
                </div>
            </div>
            <div class="row">
                <div class="col-6">
                    <span class="col-form-label-sm" style="font-size: 12px">5. Phone</span>
                    <br />
                    <asp:TextBox ID="txtPhone" runat="server" Columns="40" TextMode="MultiLine" Rows="1"
                        MaxLength="100" onkeyup="LimitCharacters(this,100,'lblPhone');">
                    </asp:TextBox><br />
                    <span class="col-form-label-sm" style="font-size: 10px">
                        <label id="lblPhone">100</label>&nbsp;characters left
                    </span>

                </div>
                <div class="col-6">
                    <%--TODO--%>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row align-items-start">
                <div class="col-sm-2">
                    <asp:HyperLink runat="server" ID="BackHyperLink" Style="font-size: 14px" class="btn btn-outline-danger btn-sm" NavigateUrl="~/Landing/LandingWorkflow3.aspx">< Back</asp:HyperLink>
                </div>
                <div class="col-sm">
                    <asp:Button runat="server" ID="btnPreview" OnClick="btnPreview_Click" Style="font-size: 14px" Text="Finish >" class="btn btn-danger btn-sm" />
                </div>

            </div>
        </div>
    </div>
</asp:Content>


