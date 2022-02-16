<%@ Page Title="" Language="C#" MasterPageFile="~/Users/Trangchu.Master" AutoEventWireup="true" CodeBehind="Thanhcong.aspx.cs" Inherits="TruongDhv.Users.Thanhcong" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="#0000FF" Text="Bạn đã gửi bài viết thành công. Thank !!!"></asp:Label><br />
    <br />
    <asp:Label ID="Label2" runat="server" Font-Bold="True" ForeColor="#0000FF" Text="Bạn có muốn tiếp tục không."
        Width="237px"></asp:Label>
    <br />
    <br />
    <asp:Button ID="Button1" runat="server" BackColor="#C0C0FF" OnClick="Button1_Click"
        Text="Tiếp tục" />&nbsp;<asp:Button ID="Button2" runat="server" BackColor="#C0C0FF"
            OnClick="Button2_Click" Text="Thoát" />
</asp:Content>
