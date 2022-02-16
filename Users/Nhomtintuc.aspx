﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Users/Trangchu.Master" AutoEventWireup="true" CodeBehind="Nhomtintuc.aspx.cs" Inherits="TruongDhv.Users.Nhomtintuc" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="text-align: center">
        <div style="text-align: center">
            <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="13pt" ForeColor="#0000FF"
                Text="Các tin tức sự kiện nổi bật đã diễn ra"></asp:Label>
            &nbsp;&nbsp;</div>
        <hr />
    &nbsp;<asp:DataList ID="DataList1" runat="server" DataKeyField="New_ID" DataSourceID="SqlDataSource1" Width="98%">
        <ItemTemplate>
            <div style="text-align: center">
                <table style="width: 100%">
                    <tr>
                        <td colspan="2" style="height: 21px; text-align: left">
                            <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" Font-Italic="False"
                                Font-Size="12pt" ForeColor="#0066CC" NavigateUrl='<%# "Chitiet.aspx?Group_ID="+Eval("Group_ID")+"&New_ID="+Eval("New_ID") %>'
                                Text='<%# Eval("Title_News") %>' Width="96%"></asp:HyperLink></td>
                    </tr>
                    <tr>
                        <td style="text-align: center" width="40%">
                            <asp:Image ID="Image1" runat="server" ForeColor="Blue" Height="80px" Width="80px" ImageUrl='<%# "Pictures/"+Eval("Picture") %>' /></td>
                        <td style="text-align: justify" width="58%">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("Shortcut") %>' Width="100%"></asp:Label></td>
                    </tr>
                    <tr>
                        <td style="width: 100px">
                        </td>
                        <td style="text-align: right;" width="58%">
                            <asp:Image ID="Image2" runat="server" ForeColor="#FF0033" ImageUrl="~/App_Themes/Chi_tiet.gif" />
                            <asp:HyperLink ID="HyperLink2" runat="server" Font-Bold="True" Font-Italic="True"
                                Font-Size="11pt" ForeColor="Red" NavigateUrl='<%# "Chitiet.aspx?Group_ID="+Eval("Group_ID")+"&New_ID="+Eval("New_ID") %>'>Chi tiết</asp:HyperLink>
                            &nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 100px">
                        </td>
                        <td style="width: 100px">
                        </td>
                    </tr>
                </table>
            </div>
            <hr />
        </ItemTemplate>
    </asp:DataList><asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
        SelectCommand="SELECT * FROM [Tb_DetailNews] WHERE ([Group_ID] = @Group_ID) ORDER BY [CreatDate] DESC">
        <SelectParameters>
            <asp:QueryStringParameter Name="Group_ID" QueryStringField="Group_ID" />
        </SelectParameters>
    </asp:SqlDataSource>
    &nbsp;&nbsp;
    </div>
</asp:Content>
