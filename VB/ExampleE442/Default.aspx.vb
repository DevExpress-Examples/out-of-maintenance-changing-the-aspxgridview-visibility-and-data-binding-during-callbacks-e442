Imports Microsoft.VisualBasic
Imports System
Imports System.Data
Imports System.Configuration
Imports System.Collections
Imports System.Web
Imports System.Web.Security
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports System.Web.UI.WebControls.WebParts
Imports System.Web.UI.HtmlControls

Partial Public Class _Default
	Inherits System.Web.UI.Page
	Protected Sub Page_Init(ByVal sender As Object, ByVal e As EventArgs)
		If Session("SelectCommand") IsNot Nothing Then
			AccessDataSource1.SelectCommand = CStr(Session("SelectCommand"))
			ASPxGridView1.Visible = True
		End If
	End Sub
	Protected Sub ASPxCallbackPanel1_Callback(ByVal source As Object, ByVal e As DevExpress.Web.CallbackEventArgsBase)
		If ASPxTextBox1.Text <> "" Then
			Session("SelectCommand") = "SELECT * FROM [authors] WHERE state='" & ASPxTextBox1.Text & "'"
			AccessDataSource1.SelectCommand = CStr(Session("SelectCommand"))
			ASPxGridView1.Visible = True
			ASPxGridView1.DataBind()
		Else
			ASPxGridView1.Visible = False
			Session.Remove("SelectCommand")
		End If
	End Sub
End Class
