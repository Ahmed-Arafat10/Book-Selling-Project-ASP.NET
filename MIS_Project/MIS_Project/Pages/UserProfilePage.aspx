<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserProfilePage.aspx.cs" Inherits="MIS_Project.ProfilePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style>
        .auto-style1 {
            width: 100%;
        }

        .auto-style17 {
            width: 166px;
            height: 41px;
        }

        .auto-style18 {
            height: 41px;
        }

        .auto-style4 {
            height: 40px;
            width: 166px;
        }

        .auto-style2 {
            height: 40px;
        }

        .auto-style7 {
            width: 166px;
            height: 34px;
        }

        .auto-style8 {
            height: 34px;
        }

        .auto-style11 {
            width: 166px;
            height: 35px;
        }

        .auto-style12 {
            height: 35px;
        }

        .auto-style13 {
            width: 166px;
            height: 36px;
        }

        .auto-style14 {
            height: 36px;
        }

        .auto-style15 {
            width: 166px;
            height: 38px;
        }

        .auto-style16 {
            height: 38px;
        }

        .auto-style5 {
            width: 166px;
            height: 19px;
        }

        .auto-style6 {
            height: 19px;
        }

        .auto-style3 {
            width: 166px;
        }

        .BTN { /*Cssclass*/
            border-radius: 15px;
            margin-left: 45px;
        }

        .HeaderText { /*Html Class*/
            text-align: center;
            color: sienna;
            background-color: black;
            opacity: 0.7;
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
    </style>
        <title>Edit Profile</title>
</head>
<body style="background-image: url('../Img/l2.jpg'); background-repeat: no-repeat; background-attachment: fixed; background-position: center center">
    <form id="form1" runat="server">
        <h1 class="HeaderText">Your Profile</h1>

        <table class="auto-style1">
            <tr>
                <td class="auto-style17">
                    <asp:Label ID="Label1" runat="server" Text="Name :" CssClass="LABEL"></asp:Label>
                </td>
                <td class="auto-style18">
                    <asp:TextBox ID="username" runat="server" CssClass="TEXTBOX" Width="200px" Height="25px"></asp:TextBox>
                </td>
                <td class="auto-style18">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="username" CssClass="RED" ErrorMessage="Please Enter Name" ForeColor="White"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label7" runat="server" Text="Email :" CssClass="LABEL"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="email" runat="server" Width="200px" Height="25px" ReadOnly="True" CssClass="TEXTBOX"></asp:TextBox>
                </td>
                <td class="auto-style2">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="email" ErrorMessage="Please Enter Email" CssClass="RED" Width="200px" ForeColor="White"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="email" CssClass="RED" ErrorMessage="Make Sure That Email is Correct" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="White"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">
                    <asp:Label ID="Label3" runat="server" Text="Password :" CssClass="LABEL"></asp:Label>
                </td>
                <td class="auto-style8">
                    <asp:TextBox ID="password" runat="server" Width="200px" Height="25px" CssClass="TEXTBOX"></asp:TextBox>
                </td>
                <td class="auto-style8">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="password" ErrorMessage="Please Enter Password" CssClass="RED" ForeColor="White"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style11">
                    <asp:Label ID="Label4" runat="server" Text="Confirm Paswword :" CssClass="LABEL"></asp:Label>
                </td>
                <td class="auto-style12">
                    <asp:TextBox ID="confpassword" runat="server" Width="200px" Height="25px" CssClass="TEXTBOX"></asp:TextBox>
                </td>
                <td class="auto-style12">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="confpassword" ErrorMessage="Please Enter Confirm The Password" CssClass="RED" Width="244px" ForeColor="White"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="password" ControlToValidate="confpassword" CssClass="RED" ErrorMessage="Password is not matching" ForeColor="White"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style13">
                    <asp:Label ID="Label5" runat="server" Text="Phone :" CssClass="LABEL"></asp:Label>
                </td>
                <td class="auto-style14">
                    <asp:TextBox ID="phone" runat="server" Width="200px" Height="25px" CssClass="TEXTBOX"></asp:TextBox>
                </td>
                <td class="auto-style14">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="phone" ErrorMessage="Please Enter Phone Number" CssClass="RED" ForeColor="White"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style15">
                    <asp:Label ID="Label6" runat="server" Text="Address :" CssClass="LABEL"></asp:Label>
                </td>
                <td class="auto-style16">
                    <asp:TextBox ID="address" runat="server" Width="200px" Height="25px" CssClass="TEXTBOX"></asp:TextBox>
                </td>
                <td class="auto-style16">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="address" ErrorMessage="Please Enter Address" CssClass="RED" ForeColor="White"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Update" CssClass="BTN" OnClick="Button1_Click" Width="100px" ForeColor="#333300" Height="35px" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>

</body>
</html>
