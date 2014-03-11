using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Microsoft.AspNet.Membership.OpenAuth;

namespace FormSamples.CBOs
{
    public class Entry
    {
        //auto-implimented properties
        public string FirsName { get; set;}
        public string LastName { get; set;}
        public string StreetAddress1 { get; set;}
        public string StreetAddress2 { get; set;}
        public string City { get; set;}
        public string Province { get; set;}
        public string PostalCode { get; set;}
        public string Email { get; set;}
    }
}