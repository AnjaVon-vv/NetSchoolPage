<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Exp23.login" %>

<!-- author: Von -->

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>登录页</title>
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
        .font {
            font-family: 'Microsoft YaHei';
            font-size: 20px;
        }
        .font30 {
            font-size: 20px;
            font-weight: bold;
            color: darkslateblue;
        }
        .btn-color {
        color: #eee;
        background-color: #A593E0;
        border-color: #A593E0;
        border-radius: 20%;
        }
        .auto-style1 {
            display: block;
            font-size: 1rem;
            font-weight: 400;
            line-height: 1.5;
            color: #495057;
            background-clip: padding-box;
            border-radius: .25rem;
            transition: none;
            border: 1px solid #ced4da;
            background-color: #fff;
        }
        .auto-style2 {
            width: 100px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="padding7"></div>
        <div class="padding7" align="center">
            <table cellpadding="7px" width="30%">
                <tr>
                    <td class="auto-style2"><asp:Label ID="Label2" runat="server" Text="用户ID" CssClass="font"></asp:Label></td>
                    <td><asp:TextBox ID="txtUsrName" runat="server"  CssClass="auto-style1" Width="100%" Height="40px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label3" runat="server" Text="密 &nbsp; 码" CssClass="font"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtPwd" runat="server" TextMode="Password" CssClass="auto-style1" Width="100%" Height="40px"></asp:TextBox>
                    </td>
                </tr>
            </table>
        </div>
        <div class="padding7" align="center">
            <asp:Label ID="tipL" runat="server" Text="请输入用户名、密码！" CssClass="font30"></asp:Label>
        </div>
        <div align="center">
            <asp:Button ID="btnLogin" runat="server" OnClick="btnLogin_Click" Text="登录" class="btn btn-color padding7 font" />
            <asp:Button ID="btnReset" runat="server" OnClick="btnReset_Click" Text="重置" class="btn btn-color padding7 font" />
        </div>
    </form>
</body>
</html>
