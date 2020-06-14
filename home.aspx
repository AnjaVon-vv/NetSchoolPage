<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="Exp23.WebForm1" %>

<!-- author: Von -->

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>我的空间</title>
     <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.0/dist/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous"/>
    <style type="text/css">
        div {
            padding: 0;
            margin: 0;
        }
        .padding7 {
            padding: 10px;
            margin: 30px;
        }
        .font30 {
            font-family: 百无禁忌除了你;
            font-weight: bold;
            font-size: 50px;
        }
        .font {
            font-family: 'Microsoft YaHei';
            font-size: 20px;
        }
        .btn-color {
        color: #eee;
        background-color: #A593E0;
        border-color: #A593E0;
        border-radius: 20%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div align="center" class="padding7">
            <asp:Label ID="welcomeL" runat="server" Text="欢迎来到您的空间！" class="font30"></asp:Label>
        </div>
        <div align="center">
            <asp:Label ID="usrL" runat="server" Text="" CssClass="font"></asp:Label>
            <br />
            <asp:Label ID="timeL" runat="server" Text="" CssClass="font"></asp:Label>
        </div>
        <div align="center" style="vertical-align: top;">
            <asp:Button ID="btnSearch" runat="server" Text="查询" OnClick="btnSearch_Click" class="btn btn-color font padding7" Width="78px"/>
            <asp:GridView ID="GridView1" runat="server" BackColor="#566270" BorderStyle="None" CellPadding="7" CellSpacing="7" ForeColor="#FFFF99" HorizontalAlign="Center">
                <PagerTemplate>
                    <div id="page-selection" class="pagination-centered"></div>
                </PagerTemplate>
            </asp:GridView>
        </div>
        <div align="center">
            <asp:Button ID="btnLogout" runat="server" Text="退出" OnClick="btnLogout_Click" class="btn btn-color padding7 font" />
        </div>
    </form>
</body>
</html>
