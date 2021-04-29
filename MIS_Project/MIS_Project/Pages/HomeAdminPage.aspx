<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomeAdminPage.aspx.cs" Inherits="MIS_Project.Pages.HomeAdminPage1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            color: darkolivegreen;
        }

        .auto-style2 {
            width: 100%;
        }

        .auto-style3 {
            height: 30px;
            text-align: center;
        }

        .auto-style4 {
            text-align: center;
        }

        .BTN { /*Cssclass*/
            border-radius: 25px;
            margin-top: 40px;
        }

        .HEADER { /*Html Class*/
            text-align: center;
            color: sienna;
            background-color: black;
            opacity: 0.7;
        }
    </style>
    <title>Admin Home</title>
</head>
<body style="background-image: url('../Img/l2.jpg'); background-repeat: no-repeat; background-attachment: fixed; background-position: center center">
    <form id="form1" runat="server">
        <h1 class="HEADER">Admin Page</h1>

        <table class="auto-style2">
            <tr>
                <td class="auto-style1">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="View/Delete Users" Height="50px" Width="200px" CssClass="BTN" ForeColor="#333300" />
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="View/Add/Delete Books" Height="50px" Width="200px" CssClass="BTN" ForeColor="#333300" />
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Button ID="Button6" runat="server" OnClick="Button6_Click" Text="Update Books" Height="50px" Width="200px" CssClass="BTN" ForeColor="#333300" />
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="View Orders" Height="50px" Width="200px" CssClass="BTN" ForeColor="#333300" />
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="View Admins" Height="50px" Width="200px" CssClass="BTN" ForeColor="#333300" />
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="Exit" Height="50px" Width="200px" CssClass="BTN" ForeColor="#333300" />
                </td>
            </tr>

        </table>
    </form>

</body>
</html>
