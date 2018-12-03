using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WcfService1
{
    public class SearchUtility
    {

        public static string SearchSongs(string searchString) {

            List<Songs> songs = JsonConvert.DeserializeObject<List<Songs>>(JSONGenerator.generateSongJSON());
            List<Songs> searchResults = new List<Songs>();
            foreach (Songs song in songs) {

                if (song.SongName.Contains(searchString))
                    searchResults.Add(song);
            }

            return JsonConvert.SerializeObject(searchResults);

        }
    }
}