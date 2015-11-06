<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Recepie-Cons.aspx.cs" Inherits="TrySQL.Recepie_Cons" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript" src="DS.js"></script>
</asp:Content>
<asp:Content ID="Content2" style="position:relative"  ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
  <div class="col-lg-8"><div id="Panel_US"  style="margin-left:20px;margin-right:20px;padding-left:40px" class="jumbotron">
     
    <p class="text-center" > <asp:Label ID="Label1" runat="server" Text="Label" Font-Names="Comic Sans MS"  Font-Size="15pt" Font-Strikeout="False"  Font-Italic="False"  BorderStyle="None"></asp:Label></p>
        <br />
        <asp:Label ID="Label2"  runat="server" Text="Label" BorderStyle="None" >  </asp:Label>
        <br />
        <br />
        <asp:Button ID="Button1" class="btn btn-primary" runat="server" Text="Go back!"  OnClick="Button1_Click" BorderStyle="None" />
       
        <br />
        <br />
       
        </div></div>
  <div class="col-lg-4">
      
      
      <div id="Div1" style="margin-left:20px;margin-right:20px;padding-left:10px;padding-right:10px" class="jumbotron ">
          <asp:TextBox ID="Rec"   CssClass="form-control" TextMode="MultiLine" Rows="5" runat="server"></asp:TextBox>
           <br />
           <asp:Button ID="Button2" class="btn btn-primary" runat="server" Text="Save comment" BorderStyle="None" OnClick="Button2_Click" OnClientClick="" />
        
      </div>

  </div>

    </div>
       <span id="Comment" onclick="Click();"  class="glyphicon glyphicon-comment" style="position:absolute;height:20px;width:20px" aria-hidden="true"></span>
 
    </asp:Content>

