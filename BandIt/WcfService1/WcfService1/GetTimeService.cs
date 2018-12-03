﻿using RestSharp;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WcfService1
{
    public class GetTimeService
    {
        public static DateTime GetLocalDateTime(double latitude, double longitude, DateTime utcDate)
        {
            var client = new RestClient("https://maps.googleapis.com");
            var request = new RestRequest("maps/api/timezone/json", Method.GET);
            request.AddParameter("location", latitude + "," + longitude);
            request.AddParameter("timestamp", utcDate.ToTimestamp());
            request.AddParameter("key", "AIzaSyAY-RRKF31Eu4Lo2yBWe5BUGVHTOrKVSQY");
            var response = client.Execute<GoogleTimeZone>(request);

            return utcDate.AddSeconds(response.Data.rawOffset + response.Data.dstOffset);
        }

    }

    public static class ExtensionMethods
    {
        public static double ToTimestamp(this DateTime date)
        {
            DateTime origin = new DateTime(1970, 1, 1, 0, 0, 0, 0);
            TimeSpan diff = date.ToUniversalTime() - origin;
            return Math.Floor(diff.TotalSeconds);
        }
    }

    public class GoogleTimeZone
    {
        public double dstOffset { get; set; }
        public double rawOffset { get; set; }
        public string status { get; set; }
        public string timeZoneId { get; set; }
        public string timeZoneName { get; set; }
    }
}