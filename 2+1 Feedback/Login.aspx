<%@ page language="C#" autoeventwireup="true" inherits="Login, App_Web_q4votx5v" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Two Plus One FeedbackLogin</title>
    <link href="css/bootstrap.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div style="width: 100%; position: relative; height: 100%;" align="center">
            <table style="top: 30%; position: fixed; left: 34%;">
                <tr>
                    <td colspan="2" align="center" class="lead">Two Plus One Feedback Login

                    </td>
                </tr>
                <tr>
                    <td align="right">UserName</td>
                    <td align="left">
                        <div style="float: left">
                            <asp:TextBox ID="txtUserName" runat="server" CssClass="form-control" Width="300px"></asp:TextBox>
                        </div>
                        <div style="float: left">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="txtUserName" ValidationGroup="1" ToolTip="Enter UserName" Text="*" runat="server" ErrorMessage="Enter UserName"></asp:RequiredFieldValidator>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td align="right">Password</td>
                    <td align="left">
                        <div style="float: left">
                            <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" Width="300px" TextMode="Password"></asp:TextBox>
                        </div>
                        <div style="float: left">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="txtPassword" ValidationGroup="1" ToolTip="Enter UserName" Text="*" runat="server" ErrorMessage="Enter Password"></asp:RequiredFieldValidator>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td align="right"></td>
                    <td align="left">
                        <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="btn btn-default" ValidationGroup="1" OnClick="btnLogin_Click" />
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ValidationGroup="1" ShowMessageBox="true" ShowSummary="false" />

                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
