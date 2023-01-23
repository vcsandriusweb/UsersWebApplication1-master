<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EmailWorkflow3.aspx.cs" Inherits="UsersWebApplication1.Email.EmailWorkflow3" %>

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
                        <asp:HyperLink runat="server" ID="HyperLink1" Style="font-size: 14px" class="btn btn-outline-danger btn-sm btn-back" NavigateUrl="~/Document/Workflow2.aspx">< Back</asp:HyperLink>
                    </div>
                    <hr>
                    <asp:RadioButtonList ID="rblDesignBusinessAgility" runat="server" Visible="false">
                        <asp:ListItem Value="are-you-an-adaptive-organization.html" Selected="True">Are you an adaptive organization ></asp:ListItem>
                        <asp:ListItem Value="not-born-agile-no-problem.html">Not born agile no problem ></asp:ListItem>
                        <asp:ListItem Value="overcoming-complexity-is-key-to-agility.html">Overcoming complexity is key to agility ></asp:ListItem>
                        <asp:ListItem Value="why-resilience-is-the-key-to-transformation.html">Why resilience is the key to transformation ></asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:RadioButtonList ID="rblDesignCloudManagement" runat="server" Visible="false">
                        <asp:ListItem Value="agility-depends-on-great-cloud-management.html" Selected="True">Agility depends on great cloud management ></asp:ListItem>
                        <asp:ListItem Value="compliance-doesnt-just-happen-it-must-be-managed.html">Compliance doesnt just happen it must be managed ></asp:ListItem>
                        <asp:ListItem Value="great-cloud-management-delivers-true-resilience.html">Great cloud management delivers true resilience ></asp:ListItem>
                        <asp:ListItem Value="is-your-cloud-management-focused-on-the-right-imperative.html">Is your cloud management focused on the right imperative ></asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:RadioButtonList ID="rblDesignCloudSecurityResilience" runat="server" Visible="false">
                        <asp:ListItem Value="7-key-priorities-for-hybrid-it-security.html" Selected="True">7 key priorities for hybrid it security ></asp:ListItem>
                        <asp:ListItem Value="are-traditional-data-protection-strategies-increasing-risk.html">Are traditional data protection strategies increasing risk ></asp:ListItem>
                        <asp:ListItem Value="great-cloud-management-delivers-true-resilience.html">Great cloud management delivers true resilience ></asp:ListItem>
                        <asp:ListItem Value="how-security-delivers-multi-cloud-confidence.html">How security delivers multi cloud confidence ></asp:ListItem>
                        <asp:ListItem Value="is-data-growth-increasing-security-risks.html">Is data growth increasing security risks ></asp:ListItem>
                        <asp:ListItem Value="is-your-organization-built-on-sand.html">Is your organization built on sand ></asp:ListItem>
                        <asp:ListItem Value="managing-compliance-is-key-to-resilience.html">Managing compliance is key to resilience ></asp:ListItem>
                        <asp:ListItem Value="resilience-depends-on-secure-digital-infrastructure.html">Resilience depends on secure digital infrastructure ></asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:RadioButtonList ID="rblDesignCostOptimization" runat="server" Visible="false">
                        <asp:ListItem Value="do-more-spend-less-how-cloud-can-optimize-costs.html" Selected="True">Do more spend less how cloud can optimize costs ></asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:RadioButtonList ID="rblDesignDigitalTransformation" runat="server" Visible="false">
                        <asp:ListItem Value="5-priorities-for-successfully-adopting-emerging-technologies.html" Selected="True">5 priorities for successfully adopting emerging technologies ></asp:ListItem>
                        <asp:ListItem Value="are-you-on-the-path-to-innovation.html">Are you on the path to innovation ></asp:ListItem>
                        <asp:ListItem Value="ask-right-questions-get-best-cloud-answers.html">Ask right questions get best cloud answers ></asp:ListItem>
                        <asp:ListItem Value="focus-on-4-pillars-of-your-digital-infrastructure.html">Focus on 4 pillars of your digital infrastructure ></asp:ListItem>
                        <asp:ListItem Value="how-can-hybrid-it-drive-social-value.html">How can hybrid it drive social value ></asp:ListItem>
                    </asp:RadioButtonList>
                </div>
            </div>
        </div>
        <div class="container">
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
