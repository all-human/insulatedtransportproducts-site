<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Import.ascx.cs" Inherits="ForemostMedia.Modules.FM_Distributor.Import" %>
<asp:FileUpload ID="FileUpload1" runat="server" />

<br />
<asp:Button ID="Button1" runat="server" Text="Upload" onclick="Button1_Click" />
<br />
<br />
<asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
    Text=" State As REgion" />
<br />
<asp:Label ID="lblResult" runat="server" />
