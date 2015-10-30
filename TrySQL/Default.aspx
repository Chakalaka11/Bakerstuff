<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TrySQL.Recepie1" %>
<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:Repeater ID="Repeater1" runat="server">
        <ItemTemplate> 
            
            <div class="panel panel-primary" style="margin-left:100px;margin-right:100px">
               
            <div class="panel-heading">
              <h3 class="panel-title" >  
                   <%# Eval("Name_of_recepie").ToString() %>
                
              </h3>
            </div>
            <div class="panel-body">
                <h5> <%# Eval("Recepie").ToString().Substring(0,10)%></h5>
                
                <asp:HyperLink ID="HyperLink1" NavigateUrl='<%# "Recepie-Cons.aspx?Article=" + Eval("ID") %>' runat="server">Read more...</asp:HyperLink> 
            </div>
          </div>
        </ItemTemplate>
        <HeaderTemplate>
         <h3><span class="label label-primary" style="margin-left:100px"> All Recepies</span></h3>  
        </HeaderTemplate>
        <FooterTemplate>
            <h2><span class="label label-info" style="margin-left:100px">Test Mark</span></h2>
        </FooterTemplate>
    </asp:Repeater>
    <br />
   
    </asp:Content>
