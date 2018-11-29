using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
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

            StreamReader reader = new StreamReader("\\Users\\hasna\\IS7024\\BandIt\\WcfService1\\WcfService1\\BandSchema.xml");
            bands = (BandsCollection)serializer.Deserialize(reader);
      
            reader.Close();

            bandJson = JsonConvert.SerializeObject(bands);

            return bandJson;
        }
    }
}