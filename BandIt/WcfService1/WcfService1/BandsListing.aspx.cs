using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WcfService1
{
    public partial class BandsListing : System.Web.UI.Page
    {
        public String bandJson = "";
        public string currentDateTimeString;

        protected void Page_Load(object sender, EventArgs e)
        {
            String searchString = Request.QueryString["searchString"];
            bandJson = JSONGenerator.generateBandJSON();
            currentDateTimeString = JSONGenerator.generateTimeString();


        }

        protected void SearchButton_Click(object sender, EventArgs e)
        {
            
        }



    }
}