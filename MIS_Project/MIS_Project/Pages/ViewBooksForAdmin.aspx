<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewBooksForAdmin.aspx.cs" Inherits="MIS_Project.Pages.ViewBooksForAdmin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }

        .auto-style3 {
            height: 109px;
            width: 346px;
        }

        .auto-style2 {
            height: 40px;
        }

        .auto-style4 {
            width: 637px;
        }

        .auto-style5 {
            height: 109px;
            width: 637px;
        }

        .auto-style6 {
            height: 23px;
            width: 637px;
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

        .auto-style28 {
            width: 346px;
        }

        .auto-style29 {
            height: 23px;
            width: 346px;
        }

        .auto-style30 {
            border-radius: 25px;
            margin-top: 20px
        }

        .auto-style31 {
            height: 9px;
            width: 346px;
        }

        .auto-style32 {
            height: 9px;
            width: 637px;
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

        .auto-style37 {
            height: 40px;
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

        .BTN { /*Cssclass*/
            border-radius: 25px;
            margin-left: 200px;
        }

        .BTNDELETE { /*Cssclass*/
            border-radius: 25px;
            margin-top: 20px;
            margin-right: 150px;
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
        <h1 class="HEADER">View Books For Admins</h1>
        <table class="auto-style1">
            <tr>
                <td class="auto-style31">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MIS_ProjectConnectionString %>" ProviderName="<%$ ConnectionStrings:MIS_ProjectConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Book]"></asp:SqlDataSource>
                </td>
                <td class="auto-style32"></td>
            </tr>
            <tr>
                <td class="auto-style3"></td>
                <td class="auto-style5">
                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="2" DataKeyNames="Book_ID" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="None" Width="551px" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px">
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
                <td class="auto-style29">
                    <asp:Label ID="Label1" runat="server" Text="Enter ID Of Book You Want To Delete :" CssClass="LABEL"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:TextBox ID="deletebook" runat="server" CssClass="auto-style30" Height="25px" ValidationGroup="DELETE"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="deletebook" CssClass="RED" ErrorMessage="Please Enter Book ID" ForeColor="White" ValidationGroup="DELETE"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style28">&nbsp;</td>
                <td class="auto-style4">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Delete" ForeColor="Red" Height="35px" Width="100px" CssClass="BTNDELETE" ValidationGroup="DELETE" />
                </td>
            </tr>
        </table>
        <table class="auto-style1">
            <tr>
                <td class="auto-style33">
                    <asp:Label ID="Label8" runat="server" Text="Book Name :" CssClass="LABEL"></asp:Label>
                </td>
                <td class="auto-style34">
                    <asp:TextBox ID="bookname" runat="server" Height="25px" Width="200px" CssClass="BTN" ValidationGroup="ADD"></asp:TextBox>
                </td>
                <td class="auto-style35">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="bookname" CssClass="RED" ErrorMessage="Please Enter Book Name" ForeColor="White" ValidationGroup="ADD"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style36">
                    <asp:Label ID="Label9" runat="server" Text="Author :" CssClass="LABEL"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="author" runat="server" Height="25px" Width="200px" CssClass="BTN" ValidationGroup="ADD"></asp:TextBox>
                </td>
                <td class="auto-style37">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="author" CssClass="RED" ErrorMessage="Please Enter Book's Author" ForeColor="White" ValidationGroup="ADD"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">
                    <asp:Label ID="Label3" runat="server" Text="Publisher :" CssClass="LABEL"></asp:Label>
                </td>
                <td class="auto-style8">
                    <asp:TextBox ID="publisher" runat="server" Height="25px" Width="200px" CssClass="BTN" ValidationGroup="ADD"></asp:TextBox>
                </td>
                <td class="auto-style20">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="publisher" CssClass="RED" ErrorMessage="Please Enter Book's Publisher" ForeColor="White" ValidationGroup="ADD"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style38">
                    <asp:Label ID="Label4" runat="server" Text="Year :" CssClass="LABEL"></asp:Label>
                </td>
                <td class="auto-style39">
                    <asp:TextBox ID="year" runat="server" Height="25px" Width="200px" CssClass="BTN" ValidationGroup="ADD"></asp:TextBox>
                </td>
                <td class="auto-style40">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="year" CssClass="RED" ErrorMessage="Please Enter Book's Year" ForeColor="White" ValidationGroup="ADD"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style33">
                    <asp:Label ID="Label10" runat="server" Text="Price :" CssClass="LABEL"></asp:Label>
                </td>
                <td class="auto-style34">
                    <asp:TextBox ID="price" runat="server" Height="25px" Width="200px" CssClass="BTN" ValidationGroup="ADD"></asp:TextBox>
                </td>
                <td class="auto-style35">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="price" CssClass="RED" ErrorMessage="Please Enter Book's Price" ForeColor="White" ValidationGroup="ADD" EnableViewState="False"></asp:RequiredFieldValidator>
                </td>
            </tr>


            <tr>
                <td class="auto-style41"></td>
                <td class="auto-style42">
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Add Book" ForeColor="#333300" Height="35px" Width="100px" CssClass="BTN" ValidationGroup="ADD" />
                </td>
                <td class="auto-style43"></td>
            </tr>
        </table>
    </form>
</body>
</html>
