using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

public partial class lien_he : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Page.Title = "Liên Hệ";
            var meta = new HtmlMeta() { Name = "description", Content = "Liên Hệ" };
            Header.Controls.Add(meta);
        }
    }

    private void sendEmail()
    {
        string msg = "<h3>SONG VIET: CONTACT</h3><br/>";
        msg += "<b>Full name: </b>" + txtFullName.Text.Trim().ToString() + "<br />";
        msg += "<b>Email: </b>" + txtEmail.Text.Trim().ToString() + "<br />";
        msg += "<b>Content: </b>" + txtNoiDung.Text.Trim().ToString();
        TLLib.Common.SendMail("118.69.193.238", 25, "webmaster@thietkewebhcm.com", "web123master", "cc@tranlegroup.com", "", "Contact SONG VIET", msg, false);
    }
    protected void btGui_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            if (RadCaptcha1.IsValid)
            {

                //send email         
                sendEmail();
                ScriptManager.RegisterClientScriptBlock(Page, Page.GetType(), "runtime", " $(document).ready(function () {alert('Cám ơn bạn đã liên lạc với chúng tôi. Thông báo của bạn đã được gửi đi. Chúng tôi sẽ liên lạc với bạn trong thời gian sớm nhất!')});", true);
                //
                //Clear text
                //
                txtFullName.Text = "";
                txtEmail.Text = "";
                txtNoiDung.Text = "";
            }
        }
    }
}