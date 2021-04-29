<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewBooksPage.aspx.cs" Inherits="MIS_Project.ViewBooks" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <style type="text/css">
        .auto-style2 {
            width: 100%;
        }

        .auto-style4 {
            width: 340px;
        }

        .auto-style5 {
            margin-left: 0px;
            margin-top: 0px;
        }

        .auto-style6 {
            text-align: center;
        }

        .BTN { /*Cssclass*/
            border-radius: 25px;
            margin-top: 40px;
            margin-left: 180px;
        }

        .HEADER { /*Html Class*/
            text-align: center;
            color: sienna;
            background-color: black;
            opacity: 0.7;
        }
    </style>
    <title>View Books</title>
</head>
<body style="background-image: url('../Img/l2.jpg'); background-repeat: no-repeat; background-attachment: fixed; background-position: center center">
    <form id="form1" runat="server">
        <div class="auto-style1">
            <div class="auto-style1">

                <h1 class="HEADER">Available Books</h1>
                <div>
                </div>
            </div>
        </div>
        <table class="auto-style2">
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style4">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MIS_ProjectConnectionString %>" ProviderName="<%$ ConnectionStrings:MIS_ProjectConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Book]"></asp:SqlDataSource>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style6">
                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="2" DataKeyNames="Book_ID" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="None" CssClass="auto-style5" Height="191px" Width="578px" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px">
                        <AlternatingRowStyle BackColor="PaleGoldenrod" />
                        <Columns>
                            <asp:BoundField DataField="Book_ID" HeaderText="Book_ID" ReadOnly="True" SortExpression="Book_ID" InsertVisible="False" />
                            <asp:BoundField DataField="Book_Name" HeaderText="Book_Name" SortExpression="Book_Name" />
                            <asp:BoundField DataField="Author" HeaderText="Author" SortExpression="Author" />
                            <asp:BoundField DataField="Publisher" HeaderText="Publisher" SortExpression="Publisher" />
                            <asp:BoundField DataField="Year" HeaderText="Year" SortExpression="Year" />
                            <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
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
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Make Order Now" Height="35px" Width="200px" CssClass="BTN" ForeColor="#333300" />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
