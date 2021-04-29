<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LogInUserPage.aspx.cs" Inherits="MIS_Project.LoginPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style>
        .auto-style1 {
            width: 100%;
        }

        .auto-style2 {
            width: 16px;
        }

        .auto-style3 {
            height: 30px;
        }

        .auto-style4 {
            width: 16px;
            height: 30px;
        }

        .auto-style5 {
            height: 40px;
        }

        .auto-style7 {
            width: 16px;
            height: 50px;
        }

        .auto-style8 {
            height: 50px;
        }

        .BTN { /*Cssclass*/
            border-radius: 15px;
            margin-left: 45px;
        }

        .TEXTBOX { /*Cssclass*/
            border-radius: 25px;
        }

        .LABEL { /*Cssclass*/
            border-radius: 15px;
            padding: 5px;
            color: lightsalmon;
            background-color: black;
            opacity: 0.8;
        }

        .RED { /*Cssclass*/
            border-radius: 15px;
            padding: 5px;
            background-color: red;
            opacity: 0.7;
        }

        .HeaderText { /*Html Class*/
            text-align: center;
            color: sienna;
            background-color: black;
            opacity: 0.7;
        }
    </style>
    <title>Login</title>
</head>
<body style="background-image: url('../Img/l2.jpg'); background-repeat: no-repeat; background-attachment: fixed; background-position: center center">
    <form id="form1" runat="server">
        <h1 class="HeaderText">Login Page</h1>
        <table class="auto-style1">
            <tr>
                <td class="auto-style8">
                    <asp:Label ID="Label1" runat="server" Text="Name :" CssClass="LABEL"></asp:Label>
                    &nbsp;</td>
                <td class="auto-style8">
                    <asp:TextBox ID="username" runat="server" Height="25px" Width="200px" CssClass="TEXTBOX"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="username" ErrorMessage="Please Enter Username" ForeColor="White" CssClass="RED"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style7"></td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Password :" CssClass="LABEL"></asp:Label>
                    &nbsp;</td>
                <td>
                    <asp:TextBox ID="password" runat="server" TextMode="Password" Height="25px" Width="200px" CssClass="TEXTBOX"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="password" ErrorMessage="Please Enter Your Password" ForeColor="White" CssClass="RED"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5"></td>
                <td class="auto-style5"></td>
            </tr>
            <tr>
                <td class="auto-style3"></td>
                <td class="auto-style3">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Log In" ForeColor="#333300" Width="100px" Height="35px" CssClass="BTN" />
                </td>
                <td class="auto-style4"></td>
            </tr>
        </table>
    </form>
</body>
</html>
