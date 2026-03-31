<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="View.ascx.cs" Inherits="Ventrian.Modules.ChildLinks.View" %>
<asp:DropDownList ID="drpChildLinks" runat="server" DataValueField="TabID" DataTextField="TabName" />
<asp:LinkButton ID="cmdGo" Runat="server" CssClass="dnnPrimaryAction" ResourceKey="Go" OnClick="cmdGo_Click" />
<asp:PlaceHolder runat="server" ID="phView" EnableViewState="False"></asp:PlaceHolder>
