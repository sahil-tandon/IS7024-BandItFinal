using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Globalization;
using System.IO;
using System.Linq;
using System.Net;
using System.Web;
using System.Xml.Serialization; 

namespace WcfService1
{
    public class JSONGenerator
    {

        /*
        Method to Generate the BANDS JSON and return the 
        serialized String to the UI.
        */
        public static string generateBandJSON() {

            BandsCollection bands = DeserializeBandSchema();

            if (bands != null)
            {
                return JsonConvert.SerializeObject(bands);
            }
            else {

                return "";

            }

        }

        /*
        Method to Generate the BAND NAMES JSON and return the 
        serialized String to the UI.
        */
        public static string generateBandNames() {

            BandsCollection bands = DeserializeBandSchema();
            List<string> bandNames = new List<string>();
            foreach (BandJSON band in bands.band)
            {
                bandNames.Add(band.BandName);
            }

            return JsonConvert.SerializeObject(bandNames);
        }

        /*
       Method to Generate the SONG NAMES JSON and return the 
       serialized String to the UI.
       */
        public static string generateSongNames()
        {

            BandsCollection bands = DeserializeBandSchema();
            List<string> songNames = new List<string>();
            foreach (BandJSON band in bands.band)
            {
                foreach (Songs song in band.Songs)
                {
                    songNames.Add(song.SongName);

                }
            }

            return JsonConvert.SerializeObject(songNames);
        }

        /*
        Method to Generate the SONGS JSON and return the 
        serialized String to the UI.
        */
        public static string generateSongJSON()
        {

            BandsCollection bands = DeserializeBandSchema();

            if (bands != null)
            {

                List<Songs> songs = new List<Songs>();

                foreach (BandJSON band in bands.band)
                {
                    foreach (Songs song in band.Songs)
                    {
                        Songs songDetails = new Songs
                        {
                            BandName = band.BandName,
                            SongName = song.SongName,
                            Rating = song.Rating,
                            Duration = song.Duration
                        };
                        songs.Add(songDetails);
                    }
                }

                return JsonConvert.SerializeObject(songs);
            }
            else {

                return "";
            }

        }


        /*
        Utility Method to deserialize the bands XML Schema and return a c# object
        */
        public static BandsCollection DeserializeBandSchema() {

            BandsCollection bands = null;

            XmlSerializer serializer = new XmlSerializer(typeof(BandsCollection));
            WebClient client = new WebClient();
            Uri uri = HttpContext.Current.Request.Url;
            String host = uri.Scheme + Uri.SchemeDelimiter + uri.Host + ":" + uri.Port;
            Stream stream = client.OpenRead(host + "/BandSchema.xml");
            StreamReader reader = new StreamReader(stream);

            bands = (BandsCollection)serializer.Deserialize(reader);

            reader.Close();

            return bands;
        }

        /*
        Method to Generate the current time using Google Timezon API
        */
        public static string generateTimeString() {

            DateTime currentDateTime = GetTimeService.GetLocalDateTime(39.1347212, -84.51388365493398, DateTime.UtcNow);

            String time = (currentDateTime.TimeOfDay.Hours).ToString() + ":" + (currentDateTime.TimeOfDay.Minutes).ToString();

            return JsonConvert.SerializeObject(time);
        }

    }


}