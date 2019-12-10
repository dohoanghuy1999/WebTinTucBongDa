<%@ Page Title="Đăng nhập" Language="C#" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>Vui lòng đăng nhập:</p>

    <p> <asp:Label ID="Label2" runat="server" Text="Tài khoản"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged" Width="147px"></asp:TextBox>
    </p>
    <p> <asp:Label ID="Label1" runat="server" Text="Mật khẩu"></asp:Label>
        <asp:TextBox ID="TextBox2"  runat="server" style="margin-left: 4px" Width="147px" ></asp:TextBox>
    </p>
    <p>
        <asp:Button ID="Button1" runat="server" Text="Đăng nhập" OnClick="Button1_Click" />&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
        <button><a href="controls/dangki.aspx">Đăng kí</a></button>    
        </asp:SqlDataSource>
    </p>
    <p>BACK: <a href="Content.aspx">QUAY VỀ</a></p>
      

    <p>-DANH SÁCH NHÀ BÁO CỦA TRANG "BÓNG ĐÁ VLOG":</p>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False"  CellPadding="2" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="None" Width="337px" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px">
        <AlternatingRowStyle BackColor="PaleGoldenrod" />
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="TGIA_ID" HeaderText="TGIA_ID" SortExpression="TGIA_ID" />
            <asp:BoundField DataField="TENTG" HeaderText="TENTG" SortExpression="TENTG" />
            <asp:BoundField DataField="EMAIL" HeaderText="EMAIL" SortExpression="EMAIL" />
        </Columns>
        <FooterStyle BackColor="Tan" />
        <HeaderStyle BackColor="Tan" Font-Bold="True" />
        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
        <SortedAscendingCellStyle BackColor="#FAFAE7" />
        <SortedAscendingHeaderStyle BackColor="#DAC09E" />
        <SortedDescendingCellStyle BackColor="#E1DB9C" />
        <SortedDescendingHeaderStyle BackColor="#C2A47B" />
    </asp:GridView>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BANTINConnectionString %>" SelectCommand="SELECT * FROM [TACGIA]"></asp:SqlDataSource>

</asp:Content>

