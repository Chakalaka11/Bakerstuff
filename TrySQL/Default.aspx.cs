using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TrySQL
{
    public partial class Recepie1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            all_dataEntities a = new all_dataEntities();       
            var query = from recepies in a.recepies select recepies;
            List<recepies> ass = new List<recepies>();
            foreach(var item in query)
            {
                ass.Add(item);   
            }
            Repeater1.DataSource = ass;
            Repeater1.DataBind();
         
           
        }
    }
}