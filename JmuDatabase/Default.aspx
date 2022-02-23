<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="JmuDatabase.MainPage" %>

<!DOCTYPE html>

<!--Programmed by Ahmad Wahedi-->


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 554px;
        }
        .auto-style7 {
            margin-left: 0px;
        }
        .auto-style14 {
            width: 109px;
        }
        .auto-style15 {
            width: 252px;
        }
        .auto-style16 {
            width: 334px;
        }
        .auto-style17 {
            width: 252px;
            height: 23px;
        }
        .auto-style18 {
            width: 109px;
            height: 23px;
        }
        .auto-style19 {
            width: 334px;
            height: 23px;
        }
        .auto-style20 {
            height: 23px;
        }
        .auto-style21 {
            text-align: center;
        }
        .auto-style22 {
            width: 252px;
            height: 69px;
        }
        .auto-style23 {
            width: 109px;
            height: 69px;
        }
        .auto-style24 {
            width: 334px;
            height: 69px;
        }
        .auto-style25 {
            height: 69px;
        }
        .auto-style26 {
            width: 252px;
            height: 52px;
        }
        .auto-style27 {
            width: 109px;
            height: 52px;
        }
        .auto-style28 {
            width: 334px;
            height: 52px;
        }
        .auto-style29 {
            height: 52px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style22">
                        <h3></h3>
                    </td>
                    <td class="auto-style23">
                        <h3></h3>
                    </td>
                    <td class="auto-style24">
                        <h2 class="auto-style21">Student Database </h2>
                        <h3 class="auto-style21">By Ahmad Wahedi</h3>
                    </td>
                    <td class="auto-style25">
                        <h3></h3>
                    </td>
                    <td class="auto-style25">
                        <h3></h3>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style17"></td>
                    <td class="auto-style18"></td>
                    <td class="auto-style19"><strong>Add New Student</strong></td>
                    <td class="auto-style20"></td>
                    <td class="auto-style20"></td>
                </tr>
                <tr>
                    <td class="auto-style15">&nbsp;</td>
                    <td class="auto-style14">Student Name</td>
                    <td class="auto-style16">
                        <asp:TextBox ID="TxtFirstN" runat="server" Height="27px" OnTextChanged="TxtFirstN_TextChanged"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style26"></td>
                    <td class="auto-style27">Email</td>
                    <td class="auto-style28">
                        <asp:TextBox ID="TxtEmail" runat="server" Height="27px" OnTextChanged="TxtEmail_TextChanged"></asp:TextBox>
                    </td>
                    <td class="auto-style29"></td>
                    <td class="auto-style29"></td>
                </tr>
                <tr>
                    <td class="auto-style15">&nbsp;</td>
                    <td class="auto-style14">&nbsp;</td>
                    <td class="auto-style16">
                        <asp:Button ID="BtnSave" runat="server" Text="Save" Width="58px" OnClick="BtnSave_Click1" />
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style15">&nbsp;</td>
                    <td class="auto-style14">&nbsp;</td>
                    <td class="auto-style16">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style15">&nbsp;</td>
                    <td class="auto-style14">&nbsp;</td>
                    <td class="auto-style16">
                        <asp:Label ID="LblConcat" runat="server"></asp:Label>
                    </td>
                    <td>
                        <asp:Button ID="Button7" runat="server" CssClass="auto-style7" Text="Populate" OnClick="Button7_Click" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style15">&nbsp;</td>
                    <td class="auto-style14">&nbsp;</td>
                    <td class="auto-style16">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style15">&nbsp;</td>
                    <td class="auto-style14">&nbsp;</td>
                    <td class="auto-style16">
                        <asp:Button ID="BtnCommit0" runat="server" OnClick="BtnCommit_Click" Text="Commit" />
                    </td>
                    <td>
                        <asp:Button ID="BtnClear" runat="server" OnClick="BtnClear_Click" Text="Clear" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style17"></td>
                    <td class="auto-style18"></td>
                    <td class="auto-style19"></td>
                    <td class="auto-style20"></td>
                    <td class="auto-style20"></td>
                </tr>
                <tr>
                    <td class="auto-style15">&nbsp;</td>
                    <td class="auto-style14">&nbsp;</td>
                    <td class="auto-style16">
                        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Student_ID" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None"  Width="439px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" AllowSorting="True">
                            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                            <Columns>
                                <asp:BoundField DataField="Student_Name" HeaderText="Student_Name" SortExpression="Student_Name" />
                                <asp:BoundField DataField="Student_Email" HeaderText="Student_Email" SortExpression="Student_Email" />
                            </Columns>
                            <EditRowStyle BackColor="#999999" />
                            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                            <SortedAscendingCellStyle BackColor="#E9E7E2" />
                            <SortedAscendingHeaderStyle BackColor="#506C8C" />
                            <SortedDescendingCellStyle BackColor="#FFFDF8" />
                            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Lab1ConnectionString6 %>" SelectCommand="SELECT * FROM [Student]"></asp:SqlDataSource>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Lab1ConnectionString %>" SelectCommand="SELECT * FROM [Student]"></asp:SqlDataSource>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style17"></td>
                    <td class="auto-style18"></td>
                    <td class="auto-style19"></td>
                    <td class="auto-style20"></td>
                    <td class="auto-style20"></td>
                </tr>
                <tr>
                    <td class="auto-style15">&nbsp;</td>
                    <td class="auto-style14">&nbsp;</td>
                    <td class="auto-style16"><strong>To edit Student Name, type in Email and Name</strong></td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style15">&nbsp;</td>
                    <td class="auto-style14">Email</td>
                    <td class="auto-style16">
                        <asp:TextBox ID="TxtEmail2" runat="server" Height="28px" Width="128px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style17"></td>
                    <td class="auto-style18">Student Name</td>
                    <td class="auto-style19">
                        <asp:TextBox ID="TxtFirstN2" runat="server" Height="28px"></asp:TextBox>
                        <asp:Button ID="BtnUpdateN" runat="server" Height="28px" Text="Update" Width="77px" OnClick="BtnUpdateN_Click1" />
                    </td>
                    <td class="auto-style20"><a href="Page2.aspx">Next Page</a></td>
                    <td class="auto-style20"></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
