using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Web;
using System.Xml.Serialization; 

namespace WcfService1
{
    public class JSONGenerator
    {
        public static string generateBandJSON() {

            string bandJson = "";

            BandsCollection bands = null;

            XmlSerializer serializer = new XmlSerializer(typeof(BandsCollection));
            WebClient client = new WebClient();
            Uri uri = HttpContext.Current.Request.Url;
            String host = uri.Scheme + Uri.SchemeDelimiter + uri.Host + ":" + uri.Port;
            Stream stream = client.OpenRead(host+"/BandSchema.xml");
            StreamReader reader = new StreamReader(stream);

            bands = (BandsCollection)serializer.Deserialize(reader);
      
            reader.Close();

            bandJson = JsonConvert.SerializeObject(bands);

            return bandJson;
        }

        public static string generateTimeString() {

            DateTime currentDateTime = GetTimeService.GetLocalDateTime(39.1347212, -84.51388365493398, DateTime.UtcNow);
            return JsonConvert.SerializeObject(currentDateTime);
        }


    }


}