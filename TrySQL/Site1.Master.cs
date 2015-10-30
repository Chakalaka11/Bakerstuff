using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TrySQL
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {

                if (Session["Nickname"] != null)
                {
                    Label1.Text = Session["Nickname"].ToString();
                }
                else
                {
                    string Co_n = Request.Cookies["User"]["Nickname"];
                    string Co_p = Request.Cookies["User"]["Pass"];
                    all_dataEntities a = new all_dataEntities();
                    if (a.users.Find(Co_n, Co_p) != null)
                    {
                        Session["Nickname"] = Co_n;
                    }
                }
            }
            catch (Exception)
            {
            }
            
        }
    }
}