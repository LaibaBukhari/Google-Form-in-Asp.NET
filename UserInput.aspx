<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UserInput.aspx.cs" Inherits="UserInput" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="background-image: url('images/clipboard.jpg'); background-repeat:no-repeat;background-size:cover;">
    <form style="margin-top:160px; margin-left:100px;" id="form1" runat="server">
    <div>
        <asp:Label ID="userName" runat="server" Text="Name:"></asp:Label>
    &nbsp;<asp:TextBox ID="nameInput" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="regNo" runat="server" Text="Reg No:"></asp:Label>
&nbsp;
        <asp:TextBox ID="regNoInput" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="class" runat="server" Text="Class"></asp:Label>
&nbsp;
        <asp:TextBox ID="classInput" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="section" runat="server" Text="Section"></asp:Label>
&nbsp;
        <asp:TextBox ID="sectionInput" runat="server"></asp:TextBox>

        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="submitBtn" runat="server" Text="Submit" OnClick="submitBtn_Click" />

    </div>
    </form>
    <asp:PlaceHolder ID="submissionStatus" runat="server"></asp:PlaceHolder>
</body>
</html>
