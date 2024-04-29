<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="AppointmentList.aspx.cs" Inherits="Admin_AppointmentList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div style="width: 100%;">
        <br />
        <h1 style="text-align:center">APPOINTMENT LIST</h1><br />
        <table style="width: 100%" border="1">
            <tr>

                <td style="width: 70%">
                    <asp:GridView ID="GridView1" runat="server" Width="100%" AutoGenerateColumns="False" CellPadding="4" ForeColor="Black" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="5px" CellSpacing="2">
                        <Columns>
                            <asp:BoundField DataField="Id" HeaderText=" Appointment Id" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" ItemStyle-ForeColor="#330000" />
                            <asp:BoundField DataField="Name" HeaderText="Patient Name" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" ItemStyle-ForeColor=" #330000" />
                            <asp:BoundField DataField="Email" HeaderText=" Email " HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" ItemStyle-ForeColor="#330000" />

                            <asp:BoundField DataField="MobileNo" HeaderText="Mobile No" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" ItemStyle-ForeColor=" #330000" />
                            <asp:BoundField DataField="Time" HeaderText="Time" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" ItemStyle-ForeColor="#330000" />
                            <asp:TemplateField HeaderText="Return" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                                <ItemTemplate>
                                    <asp:Button runat="server" ID="btnDelete" CommandArgument='<%#Eval("Id") %>' Text="Delete" OnClick="btnDelete_Click" Width="90" ForeColor="Black" BackColor="#009933" OnClientClick="return confirm('Are you sure you want to return this Book?');" />
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        <FooterStyle BackColor="#CCCCCC" />
                        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                        <RowStyle BackColor="White" />
                        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#808080" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#383838" />
                    </asp:GridView>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>

