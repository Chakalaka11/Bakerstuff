<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Log_in.aspx.cs" Inherits="TrySQL.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div class="form-group">
    <label for="exampleInputEmail1">Nickname</label>
    <asp:TextBox ID="TextBox1"  placeholder="Email" CssClass="form-control" runat="server"></asp:TextBox>
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Password</label>
    
   <asp:TextBox ID="TextBox2" runat="server" type="password" CssClass="form-control"  placeholder="Password"></asp:TextBox>
  </div>
      <asp:Button ID="Button1"  CssClass="btn btn-success" runat="server" Text="Log in!" OnClick="Button1_Click" />
     <div class="alert alert-danger hidden" id="NoMatchRegister" style=" margin-right:90px ; margin-left:90px"  role="alert">Nickname/Password don`t match!</div>
</asp:Content>
