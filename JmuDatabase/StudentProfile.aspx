<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentProfile.aspx.cs" Inherits="JmuDatabase.StudentProfile" %>

<!DOCTYPE html>

<!--Programmed by Ahmad Wahedi-->

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <fieldset>
                <legend>JMU Student Database - 2022</legend>

                <asp:Table ID="Table1" runat="server" Width="100%">
                    <asp:TableRow>
                        <asp:TableCell>
                            <asp:Label ID="Label1" runat="server" Text="Choose Student:"></asp:Label>
                            <br />
                            <asp:DropDownList ID="drplstStudentChoose" runat="server" DataSourceID="datasrcStudentList" DataTextField="Student_Name" DataValueField="Student_ID"></asp:DropDownList>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:Label ID="Label2" runat="server" Text="Select Scholarship Amount:"></asp:Label>
                            <br />
                            <asp:DropDownList ID="drplstTermChoose" runat="server" DataSourceID="datasrcTermList" DataTextField="Scholarship_Amount" DataValueField="Scholarship_ID"></asp:DropDownList>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:Label ID="Label4" runat="server" Text="Choose Mentor"></asp:Label>
                            <br />
                            <asp:DropDownList ID="drplstCourseChoose" runat="server" DataSourceID="datasrcCourseList" DataTextField="Mentor_Information" DataValueField="Mentor_ID"></asp:DropDownList>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:Button ID="btnEnrollStudent" runat="server" Text="Enroll Student ->" OnClick="btnEnrollStudent_Click" />
                        </asp:TableCell>
                    </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <hr />
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell ColumnSpan="4">
                        <asp:Label ID="Label3" runat="server" Text="Choose Student to View Enrollment:"></asp:Label>
                        <asp:DropDownList ID="drplstStudentViewEnrollment" AutoPostBack="true" runat="server" DataSourceID="datasrcStudentList" DataTextField="Student_Name" DataValueField="Student_ID" OnSelectedIndexChanged="drplstStudentViewEnrollment_SelectedIndexChanged"></asp:DropDownList>
                        <br />
                        <asp:GridView ID="grdvwEnrollmentDisplay" runat="server" AlternatingRowStyle-BackColor="#ccffff" EmptyDataText="No Student Selected!"></asp:GridView>
                    </asp:TableCell>
                </asp:TableRow>
                </asp:Table>


            </fieldset>

            <asp:SqlDataSource ID="datasrcStudentList" runat="server" ConnectionString="<%$ ConnectionStrings:Lab1ConnectionString15 %>" SelectCommand="SELECT [Student_ID], [Student_Name] FROM [Student]"></asp:SqlDataSource>
            <asp:SqlDataSource ID="datasrcTermList" runat="server" ConnectionString="<%$ ConnectionStrings:Lab1ConnectionString14 %>" SelectCommand="SELECT Scholarship_ID, Scholarship_Amount AS Scholarship_Amount from Scholarship"></asp:SqlDataSource>
            <asp:SqlDataSource ID="datasrcCourseList" runat="server" ConnectionString="<%$ ConnectionStrings:Lab1ConnectionString13 %>" SelectCommand="SELECT Mentor_ID, Mentor_Name + ' ' + Mentor_Email AS Mentor_Information FROM Mentor"></asp:SqlDataSource>
        </div>
    </form>
    <p>
        <a href="Page3.aspx">Go Back</a></p>
</body>
</html>
