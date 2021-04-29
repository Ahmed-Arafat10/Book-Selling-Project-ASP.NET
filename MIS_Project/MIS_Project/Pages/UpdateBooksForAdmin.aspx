<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UpdateBooksForAdmin.aspx.cs" Inherits="MIS_Project.Pages.UpdateBooksForAdmin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style>
        .auto-style1 {
            width: 100%;
        }

        .auto-style33 {
            height: 50px;
            width: 121px;
        }

        .auto-style34 {
            height: 50px;
        }

        .auto-style35 {
            height: 50px;
            width: 487px;
        }

        .auto-style36 {
            width: 121px;
            height: 40px;
        }

        .auto-style2 {
            height: 40px;
        }

        .auto-style37 {
            height: 40px;
            width: 487px;
        }

        .auto-style7 {
            width: 121px;
            height: 23px;
        }

        .auto-style8 {
            height: 23px;
        }

        .auto-style20 {
            height: 23px;
            width: 487px;
        }

        .auto-style38 {
            height: 49px;
            width: 121px;
        }

        .auto-style39 {
            height: 49px;
        }

        .auto-style40 {
            height: 49px;
            width: 487px;
        }

        .auto-style41 {
            height: 48px;
            width: 121px;
        }

        .auto-style42 {
            height: 48px;
        }

        .auto-style43 {
            height: 48px;
            width: 487px;
        }

        .RED { /*Cssclass*/
            border-radius: 15px;
            padding: 5px;
            background-color: red;
            opacity: 0.7;
        }

        .TEXTBOX { /*Cssclass*/
            border-radius: 25px;
        }

        .LIST { /*Cssclass*/
            border-radius: 25px;
            margin-right: 80px;
        }

        .BTNV { /*Cssclass*/
            border-radius: 25px;
            margin-top: 20px;
            margin-left: 45px;
        }

        .BTNU { /*Cssclass*/
            border-radius: 25px;
            margin-left: 250px;
        }

        .BTN { /*Cssclass*/
            border-radius: 25px;
            margin-left: 200px;
        }

        .LABEL { /*Cssclass*/
            border-radius: 15px;
            padding: 5px;
            color: lightsalmon;
            background-color: black;
            opacity: 0.8;
        }

        .HEADER { /*Html Class*/
            text-align: center;
            color: sienna;
            background-color: black;
            opacity: 0.7;
        }
    </style>
    <title>Update Books</title>
</head>
<body style="background-image: url('../Img/l2.jpg'); background-repeat: no-repeat; background-attachment: fixed; background-position: center center">
    <form id="form1" runat="server">
        <h1 class="HEADER">Update Books</h1>

        <table class="auto-style1">
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Book Name :" CssClass="LABEL"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="BooksList" runat="server" DataSourceID="SqlDataSource1" DataTextField="Book_Name" DataValueField="Book_ID" CssClass="LIST" Height="25px" Width="200px">
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MIS_ProjectConnectionString %>" ProviderName="<%$ ConnectionStrings:MIS_ProjectConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Book]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="View Details" ForeColor="#333300" Height="35px" Width="100px" CssClass="BTNV" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <table class="auto-style1">
            <tr>
                <td class="auto-style33">
                    <asp:Label ID="Label8" runat="server" Text="Book Name :" CssClass="LABEL"></asp:Label>
                </td>
                <td class="auto-style34">
                    <asp:TextBox ID="bookname" runat="server" Height="25px" Width="200px" CssClass="BTN" ValidationGroup="UpdateOnly"></asp:TextBox>
                </td>
                <td class="auto-style35">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" CssClass="RED" ErrorMessage="Please Enter Book Name" ForeColor="White" ControlToValidate="bookname" ValidationGroup="UpdateOnly"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style36">
                    <asp:Label ID="Label9" runat="server" Text="Author :" CssClass="LABEL"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="author" runat="server" Height="25px" Width="200px" CssClass="BTN" ValidationGroup="UpdateOnly"></asp:TextBox>
                </td>
                <td class="auto-style37">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" CssClass="RED" ErrorMessage="Please Enter Book's Author" ForeColor="White" ControlToValidate="author" ValidationGroup="UpdateOnly"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">
                    <asp:Label ID="Label3" runat="server" Text="Publisher :" CssClass="LABEL"></asp:Label>
                </td>
                <td class="auto-style8">
                    <asp:TextBox ID="publisher" runat="server" Height="25px" Width="200px" CssClass="BTN" ValidationGroup="UpdateOnly"></asp:TextBox>
                </td>
                <td class="auto-style20">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ValidationGroup="UpdateOnly" runat="server" CssClass="RED" ErrorMessage="Please Enter Book's Publisher" ForeColor="White" ControlToValidate="publisher"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style38">
                    <asp:Label ID="Label4" runat="server" Text="Year :" CssClass="LABEL"></asp:Label>
                </td>
                <td class="auto-style39">
                    <asp:TextBox ID="year" runat="server" Height="25px" Width="200px" CssClass="BTN" ValidationGroup="UpdateOnly"></asp:TextBox>
                </td>
                <td class="auto-style40">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ValidationGroup="UpdateOnly" CssClass="RED" ErrorMessage="Please Enter Book's Year" ForeColor="White" ControlToValidate="year"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style33">
                    <asp:Label ID="Label10" runat="server" Text="Price :" CssClass="LABEL"></asp:Label>
                </td>
                <td class="auto-style34">
                    <asp:TextBox ID="price" runat="server" Height="25px" Width="200px" CssClass="BTN" ValidationGroup="UpdateOnly"></asp:TextBox>
                </td>
                <td class="auto-style35">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" CssClass="RED" ValidationGroup="UpdateOnly" ErrorMessage="Please Enter Book's Price" ForeColor="White" ControlToValidate="price"></asp:RequiredFieldValidator>
                </td>
            </tr>


            <tr>
                <td class="auto-style41"></td>
                <td class="auto-style42">
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Update Book" ValidationGroup="UpdateOnly" ForeColor="#333300" Height="35px" Width="100px" CssClass="BTNU" />
                </td>
                <td class="auto-style43"></td>
            </tr>
        </table>
    </form>
</body>
</html>
