<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewOrdersForAdmin.aspx.cs" Inherits="MIS_Project.Pages.ViewOrdersForAdmin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }

        .auto-style2 {
            height: 37px;
        }

        .auto-style5 {
            margin-left: 0px;
        }

        .auto-style6 {
            text-align: center;
        }

        .HEADER { /*Html Class*/
            text-align: center;
            color: sienna;
            background-color: black;
            opacity: 0.7;
        }
        .auto-style7 {
            height: 37px;
            width: 127px;
        }
        .auto-style8 {
            width: 127px;
        }
    </style>
    <title>View Orders</title>
</head>
<body style="background-image: url('../Img/l2.jpg'); background-repeat: no-repeat; background-attachment: fixed; background-position: center center">
    <form id="form1" runat="server">
        <h1 class="HEADER">View Orders</h1>
        <table class="auto-style1">
            <tr>
                <td class="auto-style7">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MIS_ProjectConnectionString %>" ProviderName="<%$ ConnectionStrings:MIS_ProjectConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Order]"></asp:SqlDataSource>
                </td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style6">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Order_ID" DataSourceID="SqlDataSource1" CellPadding="2" ForeColor="Black" GridLines="None" CssClass="auto-style5" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px">
                        <AlternatingRowStyle BackColor="PaleGoldenrod" />
                        <Columns>
                            <asp:BoundField DataField="Order_ID" HeaderText="Order_ID" InsertVisible="False" ReadOnly="True" SortExpression="Order_ID" />
                            <asp:BoundField DataField="User_Email" HeaderText="User_Email" SortExpression="User_Email" />
                            <asp:BoundField DataField="Book_ID" HeaderText="Book_ID" SortExpression="Book_ID" />
                            <asp:BoundField DataField="Book_Name" HeaderText="Book_Name" SortExpression="Book_Name" />
                            <asp:BoundField DataField="Author" HeaderText="Author" SortExpression="Author" />
                            <asp:BoundField DataField="Order_Price" HeaderText="Order_Price" SortExpression="Order_Price" />
                            <asp:BoundField DataField="PaymentMethod" HeaderText="PaymentMethod" SortExpression="PaymentMethod" />
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
