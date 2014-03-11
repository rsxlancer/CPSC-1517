using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace AppDev1.Demos.Data
{
    public class JobApplication
    {   
        public string Name { get; set; }
        public string Email { get; set; }
        public bool IsFullTime { get; set; }
        public List<string> Jobs { get; set; }  
        public string PhoneNumber { get; set; }

        //constructor
        public JobApplication()
        {
            //Instantiate (create) the Jobs object
            Jobs = new List<string>();
        }
    }
}