<%@ Page Title="" Language="C#" MasterPageFile="~/Users/Trangchu.Master" AutoEventWireup="true" CodeBehind="Guibaiviet.aspx.cs" Inherits="TruongDhv.Users.Guibaiviet" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="text-align: center">
        <table style="width: 100%">
            <tr>
                <td colspan="3" style="background-color: #99ccff">
                    <strong><span style="font-size: 13pt; color: #0000ff">Gửi bài viết: </span></strong>
                </td>
            </tr>
            <tr>
                <td colspan="3" style="height: 25px">
                </td>
            </tr>
            <tr>
                <td align="right" style="font-weight: bold; color: #0066cc" width="38%">
                    Tiêu đề:</td>
                <td style="width: 4px">
                </td>
                <td align="left" style="width: 100px">
                    <asp:TextBox ID="TxtTieude" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td align="right" style="font-weight: bold; color: #0066cc" width="38%">
                    Nội dung chính:</td>
                <td style="width: 4px; height: 30px">
                </td>
                <td align="left" style="width: 100px; height: 30px">
                    <asp:TextBox ID="TxtNDChinh" runat="server" Height="54px" TextMode="MultiLine" Width="219px"></asp:TextBox></td>
            </tr>
            <tr>
                <td align="right" style="font-weight: bold; color: #0066cc" width="38%">
                    Nội dung:</td>
                <td style="width: 4px; height: 68px">
                </td>
                <td align="left" style="height: 68px" width="60%">
                    <asp:TextBox ID="TxtNoidung" runat="server" Height="60px" TextMode="MultiLine" Width="219px"></asp:TextBox></td>
            </tr>
            <tr>
                <td align="right" colspan="3" style="height: 25px">
                </td>
            </tr>
        </table>
    </div>
    <div style="text-align: center">
        <table style="width: 100%">
            <tr>
                <td style="width: 48%; text-align: right">
                    <asp:Button ID="CmdGui" runat="server" Text="Gửi" Width="73px" BackColor="#C0C0FF" Font-Bold="True" OnClick="CmdGui_Click" /></td>
                <td style="width: 100px">
                    </td>
                <td style="width: 48%; text-align: left">
                    <asp:Button ID="CmdThoat" runat="server" Text="Thoát" Width="64px" BackColor="#C0C0FF" Font-Bold="True" OnClick="CmdThoat_Click" /></td>
            </tr>
        </table>
    </div>
</asp:Content>
