<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="Product.aspx.cs" Inherits="Admin_Product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container" style="width: 50%; height: 70%; margin: auto">

        <div class="about-grids">

            <div class="col-md-9 col-sm-9 col-xs-9 abt-rt-grid">
                <div class="w3ls-grid-head text-center">
                    <h2>Product Entry</h2>

                </div>
                <br />
                <div class="abt-form text-center" style="margin: auto;">
                    <div class="col-sm-4 col-xs-4 w3ls-lt-form" style="width: 100%">
                        <div class="w3ls-pr">
                            <asp:TextBox ID="txtPName" runat="server" placeholder="Product Name"></asp:TextBox>
                            <asp:DropDownList ID="ddlcate" runat="server" Width="100%" Height="50%">
                                 <asp:ListItem>---Select Category---</asp:ListItem>
                                  <asp:ListItem>Products</asp:ListItem>
                                <asp:ListItem>Medicines</asp:ListItem>
                                <asp:ListItem>PersonalCare</asp:ListItem>
                                <asp:ListItem>HealthCare</asp:ListItem>
                            </asp:DropDownList><br /><br />
                              <asp:DropDownList ID="ddlStatus" runat="server" Width="100%" Height="50%">
                                 <asp:ListItem>---Select Status---</asp:ListItem>
                                <asp:ListItem>Front</asp:ListItem>
                                <asp:ListItem>Active</asp:ListItem>
                               
                            </asp:DropDownList><br /><br />
                            <asp:TextBox ID="txtPrice" runat="server" placeholder="MRP"></asp:TextBox>
                                 <asp:TextBox ID="txtSp" runat="server" placeholder="Selling Price"></asp:TextBox>
                            <asp:FileUpload ID="fuPhoto" runat="server" />

                        </div>
                    </div>
                    <div class="clearfix"></div>
                    <asp:Button ID="btnsubmit" runat="server" Text="Submit" Width="100%" OnClick="btnsubmit_Click" />
                    <asp:Label ID="lblMessage" runat="server"></asp:Label>

                </div>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
</asp:Content>

