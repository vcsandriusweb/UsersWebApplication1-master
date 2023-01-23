<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Workflow3.aspx.cs" Inherits="UsersWebApplication1.Document.Workflow3" ValidateRequest="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
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
        <div class="container py-2 workflow-progress-nav">
            <div class="row justify-content-center">
                <div class="col-12">
                    <div class="btn-toolbar" role="toolbar">
                        <div class="btn-group mr-2" role="group" aria-label="First group">
                            <button type="button" class="btn  btn-circle btn-sm">1</button>
                            <button type="button" class="btn btn-circle btn-sm">2</button>
                            <button type="button" class="btn btn-circle btn-sm badge-secondary">3</button>
                            <button type="button" class="btn btn-circle btn-sm">4</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="container py-2">
            <div class="row">
                <div class="col">
                    <div>
                        <span class="col-form-label-sm" style="font-size: 12px">Choose your design</span><br />
                        <span class="col-form-label-sm" style="font-size: 12px">Topic:</span>
                        <asp:Label ID="lblContent" runat="server" Style="font-size: 12px" Font-Bold="true" ForeColor="Red" class="form-label form-control-sm"></asp:Label>
                    </div>
                    <div style="margin-left: 950px;">
                        <asp:HyperLink runat="server" ID="HyperLink1" Style="font-size: 14px" class="btn btn-outline-danger btn-sm btn-back" NavigateUrl="~/Document/Workflow2.aspx">< Back</asp:HyperLink>
                    </div>
                    <hr>
                    <asp:RadioButtonList ID="rblDesign" runat="server" class="workflow3-radio" RepeatDirection="Horizontal" RepeatColumns="3">
                        <asp:ListItem Text='<img src="../Images/Shared/Thumbnail/1/Slide1.PNG" width="280px" alt="img1" style="margin-right:50px;" />' Value="1" Selected="True" />
                        <asp:ListItem Text='<img src="../Images/Shared/Thumbnail/2/Slide1.PNG" width="280px" alt="img2" style="margin-right:50px;" />' Value="2"></asp:ListItem>
                        <asp:ListItem Text='<img src="../Images/Shared/Thumbnail/3/Slide1.PNG" width="280px" alt="img3" style="margin-right:50px;" />' Value="3"></asp:ListItem>
                        <asp:ListItem Text='<img src="../Images/Shared/Thumbnail/4/Slide1.PNG" width="280px" alt="img4" />' Value="4"></asp:ListItem>
                        <asp:ListItem Text='<img src="../Images/Shared/Thumbnail/5/Slide1.PNG" width="280px" alt="img5" />' Value="5"></asp:ListItem>
                        <asp:ListItem Text='<img src="../Images/Shared/Thumbnail/6/Slide1.PNG" width="280px" alt="img6" />' Value="6"></asp:ListItem>
                        <asp:ListItem Text='<img src="../Images/Shared/Thumbnail/7/Slide1.PNG" width="280px" alt="img7" />' Value="7"></asp:ListItem>
                        <asp:ListItem Text='<img src="../Images/Shared/Thumbnail/8/Slide1.PNG" width="280px" alt="img8" />' Value="8"></asp:ListItem>
                        <asp:ListItem Text='<img src="../Images/Shared/Thumbnail/9/Slide1.PNG" width="280px" alt="img9" />' Value="9"></asp:ListItem>
                        <asp:ListItem Text='<img src="../Images/Shared/Thumbnail/10/Slide1.PNG" width="280px" alt="img10" />' Value="10"></asp:ListItem>
                    </asp:RadioButtonList>
                </div>
            </div>
        </div>
        <div class="container" style="margin-top: 50px;">
            <div class="row align-items-start">
                <div class="col-sm-2">
                    <asp:HyperLink runat="server" ID="BackHyperLink" Style="font-size: 14px" class="btn btn-outline-danger btn-sm btn-back" NavigateUrl="~/Document/Workflow2.aspx">< Back</asp:HyperLink>
                </div>
                <div class="col-sm">
                    <asp:Button runat="server" ID="btnConfirm" OnClick="btnConfirm_Click" Style="font-size: 14px" Text="Confirm >" class="btn btn-danger btn-sm btn-forward" />
                </div>

            </div>
        </div>
    </div>
</asp:Content>
