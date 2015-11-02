using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TrySQL
{
    public partial class Change : System.Web.UI.Page
    {
        all_dataEntities a;
        recepies current;
        int c;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Nickname"] != null)
            {
                if (Request.QueryString["Article"] != null)
                {
                    a = new all_dataEntities();
                    c = Convert.ToInt32(Request.QueryString["Article"]);
                    current = a.recepies.First(n => n.ID == c);
                    if (!IsPostBack)
                    {
                        Rec.Text = current.Recepie;
                        Name.Text = current.Name_of_recepie;
                    }
                }
            }
            else
            {
                Rec.Enabled = false;
                Button1.Enabled = false;
                Name.Enabled = false;
                alert.Text = "Please, log in , we need to know who you are!";
            }
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            if (Request.QueryString["Article"] != null)
            {
                current.Name_of_recepie = Name.Text;
                current.Recepie = Rec.Text;

                a.recepies.Attach(current);
                var entry = a.Entry(current);
                entry.Property(y => y.Recepie).IsModified = true;
                entry.Property(y => y.Name_of_recepie).IsModified = true;
              
            }
            else 
            {
                a = new all_dataEntities();
                current = new recepies();
                current.Name_of_recepie = Name.Text;
                current.Recepie = Rec.Text;
                current.Author = Session["Nickname"].ToString();
                current.ID = a.recepies.Count();
                a.recepies.Add(current);
               
            }
            a.SaveChanges();
            Response.Redirect("Default.aspx");
        }
    }
}