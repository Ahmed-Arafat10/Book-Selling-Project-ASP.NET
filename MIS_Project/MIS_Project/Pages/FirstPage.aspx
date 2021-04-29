<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FirstPage.aspx.cs" Inherits="MIS_Project.HomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 115px;
        }

        .auto-style2 {
            height: 24px;
            text-align: center;
        }

        .auto-style3 {
            height: 23px;
            text-align: center;
        }

        .auto-style4 {
            text-align: center;
        }

        .BTN { /*Cssclass*/
            border-radius: 25px;
            margin-top: 50px;
        }

        .MYFOOTER { /*Html Class*/
            padding: 10px;
            color: burlywood;
            margin-top: 161px;
            text-align: center;
            background-color: black;
            opacity: 0.7;
        }

        .HeaderText { /*Html Class*/
            text-align: center;
            color: sienna;
            background-color: black;
            opacity: 0.7;
        }

        footer {
            margin-top: 100px;
        }
    </style>
    <title>Home</title>
</head>
<body style="background-image: url('../Img/l2.jpg'); background-repeat: no-repeat; background-attachment: fixed; background-position: center center">
    <form id="form1" runat="server">
        <h1 class="HeaderText">Welcome To <span style="color: burlywood">E-</span>Book Store</h1>
        <table class="auto-style1">
            <tr>
                <td class="auto-style4">
                    <strong>
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Sign Up" Height="50px" Width="200px" CssClass="BTN" ForeColor="#333300" />
                    </strong>
                </td>

            </tr>
            <tr>
                <td class="auto-style2">
                    <strong>
                        <asp:Button ID="Button3" runat="server" Text="Login" OnClick="Button3_Click" Height="50px" Width="200px" CssClass="BTN" ForeColor="#333300" />
                    </strong>
                </td>

            </tr>
            <tr>
                <td class="auto-style3">
                    <strong>
                        <asp:Button ID="Button2" runat="server" Text="Login As Admin" OnClick="Button2_Click" Height="50px" Width="200px" CssClass="BTN" ForeColor="#333300" />
                    </strong>
                </td>

            </tr>
            <tr>
                <td class="auto-style4">
                    <strong>
                        <asp:Button ID="Button4" runat="server" Text="About Us" OnClick="Button4_Click" Height="50px" Width="200px" CssClass="BTN" ForeColor="#333300" />
                    </strong>
                </td>
            </tr>

        </table>

    </form>
    <footer class="MYFOOTER"><strong>All Copyrights Reserved &copy;</strong></footer>
</body>

</html>
