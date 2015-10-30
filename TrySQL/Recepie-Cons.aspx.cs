using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TrySQL
{
    public partial class Recepie_Cons : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            all_dataEntities a = new all_dataEntities();
            var query = from recepies in a.recepies select recepies;
            List<recepies> data = new List<recepies>();
            foreach (var item in query)
            {

                data.Add(item);
            }
           
            int s = Convert.ToInt32(Request.QueryString["Article"])-1;
            Label1.Text = data[s].Name_of_recepie;
            Label2.Text = data[s].Recepie;
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Recepie.aspx");
        }
    }
}