using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class _Default : System.Web.UI.Page {
    protected void Page_Init(object sender, EventArgs e) {
        if(Session["SelectCommand"] != null) { 
            AccessDataSource1.SelectCommand = (string)Session["SelectCommand"];
            ASPxGridView1.Visible = true;
        }
    }
    protected void ASPxCallbackPanel1_Callback(object source, DevExpress.Web.CallbackEventArgsBase e) {
        if(ASPxTextBox1.Text != "") {
            Session["SelectCommand"] = "SELECT * FROM [authors] WHERE state='" + ASPxTextBox1.Text + "'";
            AccessDataSource1.SelectCommand = (string)Session["SelectCommand"];
            ASPxGridView1.Visible = true;
            ASPxGridView1.DataBind();
        }
        else {
            ASPxGridView1.Visible = false;
            Session.Remove("SelectCommand");
        }
    }
}
