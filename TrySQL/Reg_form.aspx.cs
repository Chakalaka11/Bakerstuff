﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TrySQL
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            users new_one = new users();
            new_one.Nickname = TextBox1.Text;
            new_one.Password = TextBox2.Text;
            all_dataEntities temp = new all_dataEntities();

            if (temp.users.Where(b => b.Nickname == new_one.Nickname) == null)
            {
                temp.users.Add(new_one);
            }
            else
                alert.Text = "This nickname already used.";
            temp.SaveChanges();
        }
    }
}