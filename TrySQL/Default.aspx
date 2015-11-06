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
                   <%if (Session["Nickname"] != null)
            {%>
            <a href="<%# "Change.aspx?Article=" + Eval("ID") %>"><span id="plus" class=" glyphicon glyphicon-pencil" ></span></a> </h3> 
             <%   
                  
            }%>
            </div>
            <div class="panel-body">
                <h5>
                    <%#  Eval("Recepie") %>...</h5>
                
                <asp:HyperLink ID="HyperLink1" NavigateUrl='<%# "Recepie-Cons.aspx?Article=" + Eval("ID") %>' runat="server">Read more...</asp:HyperLink> 
            </div>
          </div>
        </ItemTemplate>
        <HeaderTemplate>
         <h3><a href="Change.aspx" style="margin-left:100px"><span class=" glyphicon glyphicon-plus" ></span></a></h3>  
        </HeaderTemplate>
   
    </asp:Repeater>
    <br />
   
    </asp:Content>
