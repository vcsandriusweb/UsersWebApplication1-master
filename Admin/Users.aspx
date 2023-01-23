<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Users.aspx.cs" Inherits="UsersWebApplication1.Admin.Users" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container py-2">
        <div class="row d-flex justify-content-center ">
            <div class="col-12 col-md-8 col-lg-6 col-xl-5">
                <h5><b>User management</b></h5>
            </div>
        </div>
    </div>
    <div class="container py-2 h-100 user-input">
        <div class="row d-flex justify-content-center align-items-center h-100">
            <div class="col-12 col-md-8 col-lg-6 col-xl-6">
                <asp:GridView ID="gvUsers" runat="server" Style="font-size: 11px" class="table borderless table-striped"
                    OnRowEditing="gvUsers_RowEditing"
                    OnRowCancelingEdit="gvUsers_RowCancelingEdit"
                    OnRowUpdating="gvUsers_RowUpdating"
                    OnPageIndexChanging="gvUsers_PageIndexChanging"
                    OnRowDeleting="gvUsers_RowDeleting"
                    AutoGenerateColumns="False"
                    DataKeyNames="Id" BorderStyle="None" BorderWidth="0">
                    <Columns>
                        <asp:BoundField DataField="Id" Visible="False"></asp:BoundField>
                        <asp:BoundField DataField="FirstName" HeaderText="First name"></asp:BoundField>
                        <asp:BoundField DataField="Surname" HeaderText="Surname"></asp:BoundField>
                        <asp:BoundField DataField="Email" HeaderText="Email address"></asp:BoundField>
                        <asp:BoundField DataField="Role" HeaderText="User type" NullDisplayText="User"></asp:BoundField>
                        <asp:CommandField ShowEditButton="True" />
                        <asp:CommandField ShowDeleteButton="True" />
                    </Columns>
                </asp:GridView>
            </div>
        </div>
        <div class="row d-flex justify-content-center align-items-center h-100">
            <div class="col-12 col-md-8 col-lg-6 col-xl-6">
                <asp:Button ID="btnAddRow" runat="server" Text="Add" Style="font-size: 11px" class="btn btn-danger btn-sm" OnClick="btnAddRow_Click" />

            </div>
        </div>
    </div>
</asp:Content>
