<%@ Page Title="" Language="C#" MasterPageFile="~/Trangchu.Master" AutoEventWireup="true" CodeBehind="Dang_Nhap.aspx.cs" Inherits="TruongDhv.Dang_Nhap" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            margin:auto;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <asp:Login ID="Login1" runat="server" BackColor="#EFF3FB" BorderColor="#B5C7DE" BorderPadding="4"
        BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="1.5em"
        ForeColor="#333333" OnAuthenticate="Login1_Authenticate" CssClass="auto-style3">
        <TitleTextStyle BackColor="#507CD1" Font-Bold="True" Font-Size="0.9em" ForeColor="White" />
        <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
        <TextBoxStyle Font-Size="0.8em" />
        <LoginButtonStyle BackColor="White" BorderColor="#507CD1" BorderStyle="Solid" BorderWidth="1px"
            Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284E98" />
    </asp:Login>
</asp:Content>
