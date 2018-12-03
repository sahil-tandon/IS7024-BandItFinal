﻿using Newtonsoft.Json;
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

        public static string SearchBands(string searchString)
        {

            BandsCollection bands = JsonConvert.DeserializeObject<BandsCollection>(JSONGenerator.generateBandJSON());
            List<BandJSON> searchResults = new List<BandJSON>();
            foreach (BandJSON band in bands.band)
            {
                if (CaseContains(band.BandName, searchString, StringComparison.CurrentCultureIgnoreCase))
                    searchResults.Add(band);
            }
            BandsCollection result = new BandsCollection();
            result.band = searchResults;
            return JsonConvert.SerializeObject(result);

        }
        public static bool CaseContains(string baseString, string textToSearch, StringComparison comparisonMode)
        {
            return (baseString.IndexOf(textToSearch, comparisonMode) != -1);
        }
    }
}