using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Microsoft.AspNet.Membership.OpenAuth;

namespace AppDev1.Demos.Data
{
    public class Student
    {
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string MiddleName { get; set; }
        public DateTime DateOfBirth { get; set; }
        public long SIN { get; set; }
        public string ProgramOfStudy { get; set; }
        public int StartingYear { get; set; }
    }
}