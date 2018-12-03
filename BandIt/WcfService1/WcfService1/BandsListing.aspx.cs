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

        protected void Page_Load(object sender, EventArgs e)
        {
            bandJson = JSONGenerator.generateBandJSON();
            


        }

        protected void SearchButton_Click(object sender, EventArgs e)
        {
            if (SearchBand.Text == "")
            {
                bandJson = JSONGenerator.generateBandJSON();
            }
            else
                bandJson = SearchUtility.SearchBands(SearchBand.Text);
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }
    }
}