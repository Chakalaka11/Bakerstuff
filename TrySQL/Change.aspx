<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Change.aspx.cs" Inherits="TrySQL.Change" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="form-group">
  <label for="comment">Name of recepie:</label>
  <asp:TextBox ID="Name" CssClass="form-control"  runat="server"></asp:TextBox>
    
</div>
    <div class="form-group">
  <label for="comment">Recepie:</label>
  <asp:TextBox ID="Rec" CssClass="form-control" TextMode="MultiLine" Rows="17"  runat="server"></asp:TextBox>
</div>
        <asp:Button ID="Button1" class="btn btn-primary" runat="server" Text="Save" BorderStyle="None" OnClick="Button1_Click" />
        
         <asp:Label CssClass="label label-danger" ID="alert" Font-Size="12" runat="server" style="margin-left:100px"></asp:Label>
            
    </asp:Content>
