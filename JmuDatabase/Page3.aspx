<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Page3.aspx.cs" Inherits="JmuDatabase.Page3" %>

<!DOCTYPE html>

<!--Programmed by Ahmad Wahedi-->


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">


        .auto-style26 {
            width: 100%;
            height: 554px;
            margin-top: 75px;
        }
        .auto-style22 {
            width: 252px;
            height: 69px;
        }
        .auto-style23 {
            width: 134px;
            height: 69px;
        }
        .auto-style24 {
            width: 334px;
            height: 69px;
        }
        .auto-style21 {
            text-align: center;
        }
        .auto-style25 {
            height: 69px;
        }
        .auto-style17 {
            width: 252px;
            height: 23px;
        }
        .auto-style18 {
            width: 134px;
            height: 23px;
        }
        .auto-style19 {
            width: 334px;
            height: 23px;
        }
        .auto-style20 {
            height: 23px;
        }
        .auto-style15 {
            width: 252px;
        }
        .auto-style14 {
            width: 134px;
        }
        .auto-style16 {
            width: 334px;
        }
        .auto-style27 {
            width: 252px;
            height: 59px;
        }
        .auto-style28 {
            width: 134px;
            height: 59px;
        }
        .auto-style29 {
            width: 334px;
            height: 59px;
        }
        .auto-style30 {
            height: 59px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style26">
                <tr>
                    <td class="auto-style22">
                        <h3></h3>
                    </td>
                    <td class="auto-style23">
                        <h3></h3>
                    </td>
                    <td class="auto-style24">
                        <h2 class="auto-style21">Scholarship Database</h2>
                        <h3 class="auto-style21">&nbsp;</h3>
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
                    <td class="auto-style19"><strong>Add New </strong>Scholarship</td>
                    <td class="auto-style20"></td>
                    <td class="auto-style20"></td>
                </tr>
                <tr>
                    <td class="auto-style15">&nbsp;</td>
                    <td class="auto-style14">&nbsp;</td>
                    <td class="auto-style16">
                        
                        &nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style27"></td>
                    <td class="auto-style28">Scholarship Amount</td>
                    <td class="auto-style29">
                        <asp:TextBox ID="TxtScholarAmount" runat="server" Height="26px"></asp:TextBox>
                    </td>
                    <td class="auto-style30"></td>
                    <td class="auto-style30"></td>
                </tr>
                <tr>
                    <td class="auto-style15">&nbsp;</td>
                    <td class="auto-style14">&nbsp;</td>
                    <td class="auto-style16">
                        <asp:Button ID="BtnSave" runat="server" OnClick="BtnSave_Click" Text="Save" Width="57px" />
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
                    <td class="auto-style16">
                        <asp:Label ID="Label3" runat="server"></asp:Label>
                    </td>
                    <td>
                        <asp:Button ID="BtnPopulate4" runat="server" OnClick="BtnPopulate4_Click" Text="Populate" />
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
                        <asp:Button ID="btnCommit4" runat="server" OnClick="Button14_Click" Text="Commit" />
                    </td>
                    <td>
                        <asp:Button ID="BtnClear4" runat="server" OnClick="BtnClear4_Click" Text="Clear" />
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
                        <asp:GridView ID="GridView3" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Scholarship_ID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView3_SelectedIndexChanged" Width="334px">
                            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                            <Columns>
                                <asp:BoundField DataField="Scholarship_ID" HeaderText="Scholarship_ID" InsertVisible="False" ReadOnly="True" SortExpression="Scholarship_ID" />
                                <asp:BoundField DataField="Scholarship_Amount" HeaderText="Scholarship_Amount" SortExpression="Scholarship_Amount" />
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
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Lab1ConnectionString8 %>" SelectCommand="SELECT * FROM [Scholarship]"></asp:SqlDataSource>
                        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:Lab1ConnectionString5 %>" SelectCommand="SELECT * FROM [Scholarship]"></asp:SqlDataSource>
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
                    <td class="auto-style16"><strong>To edit amount, type in Scholarship ID first</strong></td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style15">&nbsp;</td>
                    <td class="auto-style14">Scholarship ID</td>
                    <td class="auto-style16">
                        <asp:TextBox ID="TxtScholarName2" runat="server" Height="27px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style17"><a href="Page2.aspx">Go Back</a></td>
                    <td class="auto-style18">Scholarship Amount</td>
                    <td class="auto-style19">
                        <asp:TextBox ID="TxtScholarAmount2" runat="server" Height="27px"></asp:TextBox>
                        <asp:Button ID="BtnUpdate4" runat="server" OnClick="BtnUpdate4_Click" Text="Update" Width="74px" />
                    </td>
                    <td class="auto-style20"><a href="StudentProfile.aspx">Next Page</a></td>
                    <td class="auto-style20"></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
