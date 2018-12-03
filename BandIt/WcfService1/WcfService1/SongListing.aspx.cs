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
        public string songJson = "";
        public string currentDateTimeString = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            String searchString = Request.QueryString["searchString"];
            if (searchString == null)
                songJson = JSONGenerator.generateSongJSON();
            else
                songJson = SearchUtility.SearchSongsbyBand(searchString);

            currentDateTimeString = JSONGenerator.generateTimeString();
        }

        protected void SearchSongs_Click(object sender, EventArgs e)
        {
            if(SearchText.Text != "" && SearchText.Text !=null)
                songJson = SearchUtility.SearchSongs(SearchText.Text);
            else
                songJson = JSONGenerator.generateSongJSON();
        }
    }
}