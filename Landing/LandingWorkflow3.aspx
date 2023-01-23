<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="LandingWorkflow3.aspx.cs" Inherits="UsersWebApplication1.Landing.LandingWorkflow3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container py-2">
        <div class="row justify-content-center">
            <div class="col-9">
                <p class="user-welcome-text">
                    Welcome <b><%: Session["fullName"].ToString()   %></b>.<br />
                    Here’s where you create your desired sales content
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
                        <span class="col-form-label-sm" style="font-size: 20px">Choose your design</span><br />
                        <span class="col-form-label-sm" style="font-size: 12px">Topic:</span>
                        <asp:Label ID="lblContent" runat="server" Style="font-size: 12px" Font-Bold="true" ForeColor="Red" class="form-label form-control-sm"></asp:Label>
                    </div>
                    <div style="margin-left: 950px;">
                        <asp:HyperLink runat="server" ID="HyperLink1" Style="font-size: 14px" class="btn btn-outline-danger btn-sm" NavigateUrl="~/Document/Workflow2.aspx">< Back</asp:HyperLink>
                    </div>
                    <hr>
                    <asp:RadioButtonList ID="rblDesignBusinessAgility" runat="server" Visible="false">
                        <asp:ListItem Value="index.html" Selected="True">Index ></asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:RadioButtonList ID="rblDesignCloudManagement" runat="server" Visible="false">
                        <asp:ListItem Value="agility-depends-on-great-cloud-management.html" Selected="True">Agility depends on great cloud management ></asp:ListItem>
                        <asp:ListItem Value="compliance-doesnt-just-happen.html">Compliance doesnt just happen ></asp:ListItem>
                        <asp:ListItem Value="great-cloud-management-delivers-true-resilience.html">Great cloud management delivers true resilience ></asp:ListItem>
                        <asp:ListItem Value="why-razor-focus-on-management-is-key.html">Why razor focus on management is key ></asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:RadioButtonList ID="rblDesignCloudSecurityResilience" runat="server" Visible="false">
                        <asp:ListItem Value="great-cloud-management-delivers-true-resilience.html" Selected="True">Great cloud management delivers true resilience ></asp:ListItem>
                        <asp:ListItem Value="how-security-delivers-multi-cloud-confidence.html">How security delivers multi cloud confidence ></asp:ListItem>
                        <asp:ListItem Value="how-traditional-data-protection-strategies-increasing-risk.html">How traditional data protection strategies increasing risk ></asp:ListItem>
                        <asp:ListItem Value="is-data-growth-increasing-security-risk.html">Is data growth increasing security risk ></asp:ListItem>
                        <asp:ListItem Value="is-your-organization-built-on-sand.html">Is your organization built on sand ></asp:ListItem>
                        <asp:ListItem Value="managing-compliance-is-key-to-resilience.html">Managing compliance is key to resilience ></asp:ListItem>
                        <asp:ListItem Value="resilience-depends-on-a-secure-digital-infrastructure.html">Resilience depends on a secure digital infrastructure ></asp:ListItem>
                        <asp:ListItem Value="the-7-key-priorities-for-hybrid-IT-security.html">The 7 key priorities for hybrid IT security ></asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:RadioButtonList ID="rblDesignCostOptimization" runat="server" Visible="false">
                        <asp:ListItem Value="index.html" Selected="True">Index ></asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:RadioButtonList ID="rblDesignDigitalTransformation" runat="server" Visible="false">
                        <asp:ListItem Value="5-priorities-for-successful-adopting-emerging-technologies.html" Selected="True">5 priorities for successful adopting emerging technologies ></asp:ListItem>
                        <asp:ListItem Value="are-you-on-the-path-to-innovation.html">Are you on the path to innovation ></asp:ListItem>
                        <asp:ListItem Value="building-digital-infrastructure-for-connected-society.html">building digital infrastructure for connected society ></asp:ListItem>
                        <asp:ListItem Value="how-can-hybrid-IT-drive-social-value.html">how can hybrid IT drive social value ></asp:ListItem>
                        <asp:ListItem Value="top-10-questions-when-going-hybrid.html">Top 10 questions when going hybrid ></asp:ListItem>
                    </asp:RadioButtonList>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row align-items-start">
                <div class="col-sm-2">
                    <asp:HyperLink runat="server" ID="BackHyperLink" Style="font-size: 14px" class="btn btn-outline-danger btn-sm" NavigateUrl="~/Document/Workflow2.aspx">< Back</asp:HyperLink>
                </div>
                <div class="col-sm">
                    <asp:Button runat="server" ID="btnConfirm" OnClick="btnConfirm_Click" Style="font-size: 14px" Text="Confirm >" class="btn btn-danger btn-sm" />
                </div>

            </div>
        </div>
    </div>
</asp:Content>

