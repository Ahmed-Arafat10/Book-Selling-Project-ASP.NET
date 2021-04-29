<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewUsersForAdmin.aspx.cs" Inherits="MIS_Project.Pages.ViewUsersForAdmin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }

        .auto-style2 {
            height: 102px;
        }

        .auto-style3 {
            height: 137px;
            width: 300px;
        }

        .auto-style4 {
            height: 137px;
            text-align: center;
        }

        .auto-style5 {
            width: 300px;
        }

        .auto-style6 {
            height: 102px;
            width: 300px;
        }

        .auto-style7 {
            height: 58px;
            width: 300px;
        }

        .auto-style8 {
            height: 58px;
        }

        .TEXTBOX { /*Cssclass*/
            margin-left: 150px;
            border-radius: 25px;
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
            margin-left: 210px;
        }

        .HEADER { /*Html Class*/
            text-align: center;
            color: sienna;
            background-color: black;
            opacity: 0.7;
        }
    </style>
    <title>View Registered Users</title>
</head>
<body style="background-image: url('../Img/l2.jpg'); background-repeat: no-repeat; background-attachment: fixed; background-position: center center">
    <form id="form1" runat="server">
        <h1 class="HEADER">View Users</h1>
        <table class="auto-style1">
            <tr>
                <td class="auto-style5">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MIS_ProjectConnectionString %>" ProviderName="<%$ ConnectionStrings:MIS_ProjectConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [User]"></asp:SqlDataSource>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">
                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="2" DataKeyNames="ID" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="None" Height="195px" Width="489px" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px">
                        <AlternatingRowStyle BackColor="PaleGoldenrod" />
                        <Columns>
                            <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                            <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                            <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
                            <asp:BoundField DataField="confirmpassword" HeaderText="confirmpassword" SortExpression="confirmpassword" />
                            <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
                            <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
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
                <td class="auto-style6">
                    <asp:Label ID="Label1" runat="server" Text="Enter ID Of Customer You Want To Delete:" CssClass="LABEL" Width="280px"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="deleteuser" runat="server" Height="25px" Width="200px" CssClass="TEXTBOX"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style7"></td>
                <td class="auto-style8">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Delete" ForeColor="Red" Height="35px" Width="100px" CssClass="BTN" />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
