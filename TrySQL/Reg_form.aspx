<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Reg_form.aspx.cs" Inherits="TrySQL.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <div>
        <div class="input-group" style="margin-left: 20px; margin-right: 420px">
            <span class="input-group-addon" id="Span1">NickName</span>
            <asp:TextBox ID="TextBox1" CssClass="form-control" placeholder="Favourite one" runat="server" BorderStyle="None"></asp:TextBox>
        </div>
        <asp:RequiredFieldValidator Display="Dynamic" CssClass="alert-warning" ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="We need your nickname , seriously."></asp:RequiredFieldValidator>
        <br />
        <div class="input-group" style="margin-left: 20px; margin-right: 420px">
            <span class="input-group-addon" id="Span2">Password</span>
            <asp:TextBox ID="TextBox2" CssClass="form-control" type="password" placeholder="Password" runat="server" BorderStyle="None"></asp:TextBox>
        </div>
          <asp:RequiredFieldValidator Display="Dynamic" CssClass="alert-warning" ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Hate your password?"></asp:RequiredFieldValidator>
       
        <br />
        <div class="input-group" style="margin-left: 20px; margin-right: 420px">
            <span class="input-group-addon" id="Span3">Email</span>
            <asp:TextBox ID="TextBox3" CssClass="form-control" placeholder="Example@mail.com" runat="server" BorderStyle="None"></asp:TextBox>
        </div>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" CssClass="alert-warning" Display="Dynamic" ControlToValidate="TextBox3" runat="server" ErrorMessage="Invalid Email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>

        <br />
        <asp:Button ID="Button1" class="btn btn-primary" runat="server" Text="Register!" Style="margin-left: 40px" BorderStyle="None" OnClick="Button1_Click" />
         <br /> 
        <br /> 
         <asp:Label CssClass="label label-danger" ID="alert" Font-Size="12" runat="server" style="margin-left:100px"></asp:Label>
    </div>



</asp:Content>
