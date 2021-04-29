<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewAdminsForAdmin.aspx.cs" Inherits="MIS_Project.Pages.ViewAdminsForAdmin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }

        .auto-style2 {
            height: 37px;
            width: 343px;
        }

        .auto-style3 {
            text-align: center;
        }

        .auto-style4 {
            margin-left: 0px;
            margin-bottom: 0px;
        }

        .auto-style5 {
            text-align: center;
            width: 343px;
        }

        .HEADER { /*Html Class*/
            text-align: center;
            color: sienna;
            background-color: black;
            opacity: 0.7;
        }
    </style>
    <title>View Admins</title>
</head>
<body style="background-image: url('../Img/l2.jpg'); background-repeat: no-repeat; background-attachment: fixed; background-position: center center">
    <form id="form1" runat="server">
        <h1 class="HEADER">View Admins</h1>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MIS_ProjectConnectionString %>" ProviderName="<%$ ConnectionStrings:MIS_ProjectConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Admin]"></asp:SqlDataSource>
                </td>
                <td></td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style3">
                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="Admin_ID" DataSourceID="SqlDataSource1" Width="611px" CellPadding="2" ForeColor="Black" GridLines="None" CssClass="auto-style4" Height="173px" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px">
                        <AlternatingRowStyle BackColor="PaleGoldenrod" />
                        <Columns>
                            <asp:BoundField DataField="Admin_ID" HeaderText="Admin_ID" InsertVisible="False" ReadOnly="True" SortExpression="Admin_ID" />
                            <asp:BoundField DataField="Admin_Name" HeaderText="Admin_Name" SortExpression="Admin_Name" />
                            <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                        </Columns>
                        <FooterStyle BackColor="Tan" />
                        <HeaderStyle BackColor="Tan" Font-Bold="True" />
                        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                        <SortedAscendingCellStyle BackColor="#FAFAE7" />
                        <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                        <SortedDescendingCellStyle BackColor="#E1DB9C" />
                        <SortedDescendingHeaderStyle BackColor="#C2A47B" />
                    </asp:GridView>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
