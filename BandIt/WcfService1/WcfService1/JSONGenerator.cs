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
            //This part is hardcoded.Which leads to page throwing "Server Error in '/' Application." Error"
            StreamReader reader = new StreamReader("D:\\UC\\Flex2\\XML\\IS7024\\BandIt\\WcfService1\\WcfService1\\BandSchema.xml");
            bands = (BandsCollection)serializer.Deserialize(reader);
      
            reader.Close();

            bandJson = JsonConvert.SerializeObject(bands);

            return bandJson;
        }
    }
}