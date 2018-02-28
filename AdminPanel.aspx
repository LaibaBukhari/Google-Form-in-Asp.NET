<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminPanel.aspx.cs" Inherits="AdminPanel" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <style>
        .studentName
        {
            list-style: none;
        }
         h1
        {
            text-decoration: underline;
            font-weight:bold;
        }
        li.studentName
        {
            font-weight:bold;
        }
    </style>
</head>
<body style="background-image: url('images/clipboard.jpg'); background-repeat:no-repeat;background-size:cover;">
    <h1 style="margin-top:160px; margin-left:100px;">Responses</h1>
    <ol id="usersResponsesList">
        <asp:PlaceHolder ID="usersResponses" runat="server"></asp:PlaceHolder>
    </ol>
    <form id="form1" runat="server">
    <div>
    
    </div>
    </form>

    <script>
        $(".studentName").prepend("<span class='glyphicon glyphicon-plus plusSign'></span>");

        $('#usersResponsesList ol').hide();
        $('.studentName ul').slideUp();

        $('.plusSign').click(function () {

            $(this).next().slideToggle();
            if ($(this).hasClass("glyphicon-plus")) {
                $(this).removeClass("glyphicon-plus");
                $(this).addClass("glyphicon-minus");

            }
            else {
                $(this).removeClass("glyphicon-minus");
                $(this).addClass("glyphicon-plus");
            }

        });
    </script>
</body>
</html>
