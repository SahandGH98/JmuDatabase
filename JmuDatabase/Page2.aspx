<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Page2.aspx.cs" Inherits="JmuDatabase.WebForm1" %>

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
            width: 109px;
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
        .auto-style15 {
            width: 252px;
        }
        .auto-style14 {
            width: 109px;
        }
        .auto-style16 {
            width: 334px;
        }
        .auto-style27 {
            width: 252px;
            height: 41px;
        }
        .auto-style28 {
            width: 109px;
            height: 41px;
        }
        .auto-style29 {
            width: 334px;
            height: 41px;
        }
        .auto-style30 {
            height: 41px;
        }
        .auto-style31 {
            width: 252px;
            height: 30px;
        }
        .auto-style32 {
            width: 109px;
            height: 30px;
        }
        .auto-style33 {
            width: 334px;
            height: 30px;
        }
        .auto-style34 {
            height: 30px;
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
                        <h2 class="auto-style21">Mentor Database</h2>
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
                    <td class="auto-style19"><strong>Add New </strong>Mentor</td>
                    <td class="auto-style20"></td>
                    <td class="auto-style20"></td>
                </tr>
                <tr>
                    <td class="auto-style15">&nbsp;</td>
                    <td class="auto-style14">Mentor Name</td>
                    <td class="auto-style16">
                        
                        <asp:TextBox ID="TxtMentor" runat="server" Height="26px" Width="128px"></asp:TextBox>
                        
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style27"></td>
                    <td class="auto-style28">Email</td>
                    <td class="auto-style29">
                        <asp:TextBox ID="TxtMentorEmail" runat="server" Height="27px" Width="121px"></asp:TextBox>
                    </td>
                    <td class="auto-style30"></td>
                    <td class="auto-style30"></td>
                </tr>
                <tr>
                    <td class="auto-style15">&nbsp;</td>
                    <td class="auto-style14">&nbsp;</td>
                    <td class="auto-style16">
                        <asp:Button ID="Button9" runat="server" OnClick="Button9_Click" Text="Save" Width="59px" />
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
                        <asp:Label ID="Label1" runat="server"></asp:Label>
                    </td>
                    <td>
                        <asp:Button ID="Button11" runat="server" OnClick="Button11_Click" Text="Populate" />
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
                    <td class="auto-style31"></td>
                    <td class="auto-style32"></td>
                    <td class="auto-style33">
                        <asp:Button ID="Button10" runat="server" OnClick="Button10_Click" Text="Commit" />
                    </td>
                    <td class="auto-style34">
                        <asp:Button ID="Button12" runat="server" OnClick="Button12_Click" Text="Clear" Width="74px" />
                    </td>
                    <td class="auto-style34"></td>
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
                        <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Mentor_ID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView2_SelectedIndexChanged" Width="443px" AllowSorting="True">
                            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                            <Columns>
                                <asp:BoundField DataField="Mentor_Name" HeaderText="Mentor_Name" SortExpression="Mentor_Name" />
                                <asp:BoundField DataField="Mentor_Email" HeaderText="Mentor_Email" SortExpression="Mentor_Email" />
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
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Lab1ConnectionString7 %>" SelectCommand="SELECT * FROM [Mentor]"></asp:SqlDataSource>
                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:Lab1ConnectionString3 %>" SelectCommand="SELECT * FROM [Mentor]"></asp:SqlDataSource>
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
                    <td class="auto-style16"><strong>To edit Mentor Name, type in Email and Name</strong></td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style15">&nbsp;</td>
                    <td class="auto-style14">Email</td>
                    <td class="auto-style16">
                        <asp:TextBox ID="TxtMentorEmail2" runat="server" Height="28px" Width="120px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style17"><a href="Default.aspx">Go Back</a></td>
                    <td class="auto-style18">Mentor Name</td>
                    <td class="auto-style19">
                        <asp:TextBox ID="TxtMentor2" runat="server" Height="29px"></asp:TextBox>
                        <asp:Button ID="Button13" runat="server" OnClick="Button13_Click" Text="Update" />
                    </td>
                    <td class="auto-style20"><a href="Page3.aspx">Next Page</a></td>
                    <td class="auto-style20"></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
