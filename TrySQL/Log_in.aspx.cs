using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TrySQL
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            all_dataEntities a = new all_dataEntities();
            if (a.users.Find(TextBox1.Text, TextBox2.Text) != null)
            {
                Session["Nickname"] = TextBox1.Text;
                Response.Redirect("/Recepie.aspx");
            }
            else 
            {
                ScriptManager.RegisterStartupScript(this, typeof(Page), "UpdateMsg", " $('#NoMatchRegister').toggleClass('hidden');", true);
            }
           
        }
    }
}