<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.v15.1" Namespace="DevExpress.Web"
    TagPrefix="dxcp" %>
<%@ Register Assembly="DevExpress.Web.v15.1" Namespace="DevExpress.Web"
    TagPrefix="dxp" %>

<%@ Register Assembly="DevExpress.Web.v15.1" Namespace="DevExpress.Web"
    TagPrefix="dxwgv" %>
<%@ Register Assembly="DevExpress.Web.v15.1" Namespace="DevExpress.Web"
    TagPrefix="dxe" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/pubs.mdb" SelectCommand="SELECT * FROM [authors]"></asp:AccessDataSource>
        Type a state name, for example CA or KS&nbsp;
        <dxe:ASPxTextBox ID="ASPxTextBox1" runat="server" Width="170px">
        </dxe:ASPxTextBox>
        <dxe:ASPxButton ID="ASPxButton1" runat="server" AutoPostBack="False" Text="Rebind Grid">
            <ClientSideEvents Click="function(s, e) {
	cbp.PerformCallback(&quot;Bind&quot;);
}" />
        </dxe:ASPxButton>
        <br />
        <dxcp:ASPxCallbackPanel ID="ASPxCallbackPanel1" runat="server" Width="200px" ClientInstanceName="cbp" OnCallback="ASPxCallbackPanel1_Callback"><PanelCollection>
<dxp:PanelContent runat="server" _designerRegion="0"><dxwgv:ASPxGridView runat="server" KeyFieldName="au_id" AutoGenerateColumns="False" DataSourceID="AccessDataSource1" Width="602px" ID="ASPxGridView1" Visible="False"><Columns>
<dxwgv:GridViewCommandColumn VisibleIndex="0">
</dxwgv:GridViewCommandColumn>
<dxwgv:GridViewDataTextColumn FieldName="au_id" ReadOnly="True" VisibleIndex="1"></dxwgv:GridViewDataTextColumn>
<dxwgv:GridViewDataTextColumn FieldName="au_lname" VisibleIndex="2"></dxwgv:GridViewDataTextColumn>
<dxwgv:GridViewDataTextColumn FieldName="au_fname" VisibleIndex="3"></dxwgv:GridViewDataTextColumn>
<dxwgv:GridViewDataTextColumn FieldName="phone" VisibleIndex="4"></dxwgv:GridViewDataTextColumn>
<dxwgv:GridViewDataTextColumn FieldName="address" VisibleIndex="5"></dxwgv:GridViewDataTextColumn>
<dxwgv:GridViewDataTextColumn FieldName="city" VisibleIndex="6"></dxwgv:GridViewDataTextColumn>
<dxwgv:GridViewDataTextColumn FieldName="state" VisibleIndex="7"></dxwgv:GridViewDataTextColumn>
<dxwgv:GridViewDataTextColumn FieldName="zip" VisibleIndex="8"></dxwgv:GridViewDataTextColumn>
<dxwgv:GridViewDataCheckColumn FieldName="contract" VisibleIndex="9"></dxwgv:GridViewDataCheckColumn>
</Columns>
</dxwgv:ASPxGridView>
</dxp:PanelContent>
</PanelCollection>
</dxcp:ASPxCallbackPanel>
        </div>
    </form>
</body>
</html>
