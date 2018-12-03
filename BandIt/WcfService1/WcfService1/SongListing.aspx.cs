using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WcfService1
{
    public partial class SongListing : System.Web.UI.Page
    {
        public String songJson = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            String searchString = Request.QueryString["searchString"];
            if (!searchString.Equals("") && searchString != null)
                songJson = "";
            else
                songJson = JSONGenerator.generateBandJSON();
        }
    }
}