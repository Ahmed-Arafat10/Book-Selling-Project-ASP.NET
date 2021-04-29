<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomeUserPage.aspx.cs" Inherits="MIS_Project.HomePage1" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style>
        .auto-style1 {
            width: 100%;
        }

        .auto-style2 {
            text-align: center;
        }

        .BTN { /*Cssclass*/
            border-radius: 25px;
            margin-top: 50px;
        }

        .HeaderText { /*Html Class*/
            text-align: center;
            color: sienna;
            background-color: black;
            opacity: 0.7;
        }
    </style>
    <title>Home Page</title>
</head>
<body style="background-image: url('../Img/l2.jpg'); background-repeat: no-repeat; background-attachment: fixed; background-position: center center">
    <form id="form1" runat="server">
        <h1 class="HeaderText"><span style="color: burlywood">E-</span>Book Store</h1>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="View Available Books" Height="50px" Width="200px" CssClass="BTN" ForeColor="#333300" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Button ID="Button2" runat="server" Text="Make Order" OnClick="Button2_Click" Height="50px" Width="200px" CssClass="BTN" ForeColor="#333300" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Button ID="Button3" runat="server" Text="View Your Order(s)" OnClick="Button3_Click" Height="50px" Width="200px" CssClass="BTN" ForeColor="#333300" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Button ID="Button4" runat="server" Text="Edit Your Profile" OnClick="Button4_Click" Height="50px" Width="200px" CssClass="BTN" ForeColor="#333300" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Button ID="Button5" runat="server" Text="Exit" OnClick="Button5_Click" Height="50px" Width="200px" CssClass="BTN" ForeColor="#333300" />
                </td>
            </tr>
        </table>

    </form>

</body>
</html>
