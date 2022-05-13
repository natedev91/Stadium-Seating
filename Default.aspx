<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Stadium Seating</title>
    <style type="text/css">
        .auto-style1 {
            width: 1281px;
        }
        .auto-style2 {
            text-align: center;
        }
        .auto-style15 {
            margin-left: 0px;
        }
        .auto-style17 {
            height: 23px;
        }
        .auto-style26 {
            text-align: left;
        }
        .auto-style27 {
            height: 30px;
        }
        .auto-style28 {
            width: 319px;
            text-align: right;
        }
        .auto-style29 {
            width: 320px;
        }
        .auto-style30 {
            width: 320px;
            text-align: right;
        }
        .auto-style31 {
            width: 319px;
        }
        .auto-style32 {
            width: 319px;
            text-align: right;
            height: 26px;
        }
        .auto-style33 {
            width: 320px;
            height: 26px;
        }
        .auto-style34 {
            width: 320px;
            text-align: right;
            height: 26px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td colspan="4">
                    <h1 class="auto-style2">Stadium Seating</h1>
                </td>
            </tr>
            <tr>
                <td colspan="4" class="auto-style27"></td>
            </tr>
            <tr>
                <td colspan="2" class="auto-style17">
                    <h4 class="auto-style2">Tickets Sold</h4>
                </td>
                <td colspan="2" class="auto-style17">
                    <h4 class="auto-style2">Revenue Generated</h4>
                </td>
            </tr>
            <tr>
                <td colspan="2" class="auto-style17">
                    Enter the number of tickets for each seat type</td>
                <td colspan="2" class="auto-style17">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style28">Class A:</td>
                <td class="auto-style29">
                    <asp:TextBox ID="txtClassA" runat="server" CssClass="auto-style15"></asp:TextBox>
                </td>
                <td class="auto-style30" style="background-color: #99CCFF">Class A:</td>
                <td class="auto-style29" style="background-color: #99CCFF">
                    <asp:Label ID="lblRevenue1" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style32">Class B:</td>
                <td class="auto-style33">
                    <asp:TextBox ID="txtClassB" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style34" style="background-color: #99CCFF">Class B:</td>
                <td class="auto-style33" style="background-color: #99CCFF">
                    <asp:Label ID="lblRevenue2" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style32">Class C:</td>
                <td class="auto-style33">
                    <asp:TextBox ID="txtClassC" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style34" style="background-color: #99CCFF">Class C:</td>
                <td class="auto-style33" style="background-color: #99CCFF">
                    <asp:Label ID="lblRevenue3" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style26" colspan="2">
                    <asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label>
                </td>
                <td class="auto-style30" style="background-color: #99CCFF">Total Revenue:</td>
                <td class="auto-style29" style="background-color: #99CCFF">
                    <asp:Label ID="lblTotal" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style31">&nbsp;</td>
                <td class="auto-style29">
                    <asp:Button ID="btnCalculate" runat="server" Text="Calculate Revenue" Width="122px" />
                </td>
                <td class="auto-style29">&nbsp;</td>
                <td class="auto-style29">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style31">&nbsp;</td>
                <td class="auto-style29">
                    <asp:Button ID="btnClear" runat="server" Text="Clear" Width="122px" />
                </td>
                <td class="auto-style29">&nbsp;</td>
                <td class="auto-style29">&nbsp;</td>
            </tr>
            <tr>
                <td colspan="4" style="backgrounf-color: #99CCFF">
                    &nbsp;</td>
            </tr>
            </table>
    </form>
</body>
</html>
