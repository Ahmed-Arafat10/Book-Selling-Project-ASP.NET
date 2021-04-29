<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MakeOrderPage.aspx.cs" Inherits="MIS_Project.MakeOrderPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Make Order</title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }

        .auto-style2 {
            height: 23px;
        }

        .auto-style3 {
            text-align: center;
            height: 30px;
        }

        .auto-style4 {
            height: 30px;
        }

        .auto-style6 {
            text-align: center;
        }

        .auto-style5 {
            margin-left: 0px;
            margin-top: 0px;
        }

        .auto-style7 {
            height: 30px;
            width: 329px;
        }

        .auto-style8 {
            height: 42px;
        }

        .auto-style9 {
            height: 60px;
        }

        .auto-style10 {
            height: 42px;
            width: 133px;
        }

        .auto-style11 {
            height: 60px;
            width: 133px;
        }

        .auto-style12 {
            height: 23px;
            width: 133px;
        }

        .auto-style13 {
            width: 133px;
        }

        .auto-style14 {
            height: 30px;
            width: 133px;
        }

        .LABEL { /*Cssclass*/
            border-radius: 15px;
            padding: 5px;
            color: lightsalmon;
            background-color: black;
            opacity: 0.8;
        }

        .BTN { /*Cssclass*/
            border-radius: 25px;
            margin-top: 50px;
        }

        .HEADER { /*Html Class*/
            text-align: center;
            color: sienna;
            background-color: black;
            opacity: 0.7;
        }

        .TEXTBOX { /*Cssclass*/
            border-radius: 25px;
        }
    </style>
</head>
<body style="background-image: url('../Img/l2.jpg'); background-repeat: no-repeat; background-attachment: fixed; background-position: center center">
    <form id="form1" runat="server">
        <h1 class="HEADER">Order Page</h1>
        <table class="auto-style2">
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style7">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MIS_ProjectConnectionString %>" ProviderName="<%$ ConnectionStrings:MIS_ProjectConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Book]"></asp:SqlDataSource>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style6">
                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="2" DataKeyNames="Book_ID" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="None" CssClass="auto-style5" Height="191px" Width="578px" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px">
                        <AlternatingRowStyle BackColor="PaleGoldenrod" />
                        <Columns>
                            <asp:BoundField DataField="Book_ID" HeaderText="Book_ID" ReadOnly="True" SortExpression="Book_ID" />
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
                <td class="auto-style7">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <br />
        <table class="auto-style1">
            <tr>
                <td class="auto-style10">
                    <asp:Label ID="Label1" runat="server" Text="Your Email :" CssClass="LABEL"></asp:Label>
                    &nbsp;</td>
                <td class="auto-style8">
                    <asp:TextBox ID="email" runat="server" Height="25px" Width="200px" ReadOnly="True" CssClass="TEXTBOX"></asp:TextBox>
                </td>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style8">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style11">
                    <asp:Label ID="Label9" runat="server" Text="The Book You Want To Buy :" Width="200px" CssClass="LABEL"></asp:Label>
                </td>
                <td class="auto-style9">
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="Book_Name" DataValueField="Book_ID" CssClass="TEXTBOX">
                    </asp:DropDownList>
                </td>
                <td class="auto-style9"></td>
                <td class="auto-style9">
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:MIS_ProjectConnectionString %>" ProviderName="<%$ ConnectionStrings:MIS_ProjectConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Book]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="auto-style12">
                    <asp:Label ID="Label10" runat="server" Text="Payment Method :" CssClass="LABEL"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:DropDownList ID="Payments" runat="server" CssClass="TEXTBOX">
                        <asp:ListItem>Visa</asp:ListItem>
                        <asp:ListItem>MasterCard</asp:ListItem>
                        <asp:ListItem>Vodafone Cash</asp:ListItem>
                        <asp:ListItem>Cash On Delivery</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style2"></td>
            </tr>
            <tr>
                <td class="auto-style13">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style13">&nbsp;</td>
                <td>&nbsp;</td>
                <td></td>
            </tr>
            <tr>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style4">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Order" Height="35px" Width="200px" CssClass="BTN" ForeColor="#333300" />
                </td>
                <td class="auto-style3">
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Home Page" Height="35px" Width="200px" CssClass="BTN" ForeColor="#333300" />
                </td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
