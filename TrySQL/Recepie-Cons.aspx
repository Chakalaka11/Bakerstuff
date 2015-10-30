<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Recepie-Cons.aspx.cs" Inherits="TrySQL.Recepie_Cons" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    

    <div id="Panel_US" style="margin-left:20px;margin-right:20px " class="jumbotron">
 
     
    <p class="text-center"> <asp:Label ID="Label1" runat="server" Text="Label" Font-Names="Comic Sans MS"  Font-Size="15pt" Font-Strikeout="False"  Font-Italic="False"  BorderStyle="None"></asp:Label></p>

        <br />
        <asp:Label ID="Label2" runat="server" Text="Label" BorderStyle="None" style="margin-left: 40px"></asp:Label>
        <br />
        <br />
        <asp:Button ID="Button1" class="btn btn-primary" runat="server" Text="Go back!" style="margin-left: 40px" OnClick="Button1_Click" BorderStyle="None" />
        
    </asp:Content>

