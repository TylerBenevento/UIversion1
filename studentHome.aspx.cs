using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QEManager
{
    public partial class studentHome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                dashboard.Attributes["class"] = "btnTabColor";


                ArrayList arr = new ArrayList();

                arr.Add("Value");
                

                GridView1.DataSource = arr;
                GridView1.DataBind();

                GridView1.Rows[0].BackColor = System.Drawing.Color.FloralWhite;

              
            }

        }

        public void dataBind()
        {
            
        }

        protected void dashboard_Click(object sender, EventArgs e)
        {

            delayForm.Visible = false;
            stQEForm.Visible = false;
            stDash.Visible = true;
            dashboard.Attributes["class"] = "btnTabColor";
            qeApp.Attributes["class"] = "btnTab";
            delay.Attributes["class"] = "btnTab";


        }

        protected void qeApp_Click(object sender, EventArgs e)
        {
            delayForm.Visible = false;
            stQEForm.Visible = true;
            stDash.Visible = false;
            dashboard.Attributes["class"] = "btnTab";
            qeApp.Attributes["class"] = "btnTabColor";
            delay.Attributes["class"] = "btnTab";
        }

        protected void delay_Click(object sender, EventArgs e)
        {
            delayForm.Visible = true;
            stQEForm.Visible = false;
            stDash.Visible = false;
            dashboard.Attributes["class"] = "btnTab";
            qeApp.Attributes["class"] = "btnTab";
            delay.Attributes["class"] = "btnTabColor";

        }
    }
}