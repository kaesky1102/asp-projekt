<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="_18._12.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            ysz</div>
    <p>
        aaaaaaaaaaaaaaaaa
    </p>
        <p>
            <asp:Button ID="ysz" runat="server" Text="Button" OnClick="ysz_Click" />
        </p>
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString_ysz %>" DeleteCommand="DELETE FROM [uzytkownicy] WHERE [Id] = @Id" InsertCommand="INSERT INTO [uzytkownicy] ([Id], [imie], [nazwisko], [wiek], [adres]) VALUES (@Id, @imie, @nazwisko, @wiek, @adres)" SelectCommand="SELECT * FROM [uzytkownicy]" UpdateCommand="UPDATE [uzytkownicy] SET [imie] = @imie, [nazwisko] = @nazwisko, [wiek] = @wiek, [adres] = @adres WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Id" Type="Int32" />
                <asp:Parameter Name="imie" Type="String" />
                <asp:Parameter Name="nazwisko" Type="String" />
                <asp:Parameter Name="wiek" Type="Int32" />
                <asp:Parameter Name="adres" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="imie" Type="String" />
                <asp:Parameter Name="nazwisko" Type="String" />
                <asp:Parameter Name="wiek" Type="Int32" />
                <asp:Parameter Name="adres" Type="String" />
                <asp:Parameter Name="Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="imie" HeaderText="imie" SortExpression="imie" />
                <asp:BoundField DataField="nazwisko" HeaderText="nazwisko" SortExpression="nazwisko" />
                <asp:BoundField DataField="wiek" HeaderText="wiek" SortExpression="wiek" />
                <asp:BoundField DataField="adres" HeaderText="adres" SortExpression="adres" />
            </Columns>
        </asp:GridView>
    </form>
    </body>
</html>
