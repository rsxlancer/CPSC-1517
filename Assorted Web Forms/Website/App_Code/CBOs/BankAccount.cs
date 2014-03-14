using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Microsoft.AspNet.Membership.OpenAuth;

namespace AppDev1.Demos.Data
{
    [Serializable] // <--This is an attribute that lets instances of BankAccount be converted to/from text (for http)
    public class BankAccount
    {
        public string AccountHolder { get; set; }
        public int AccountNumber { get; set; }
        public double Openingbalance { get; set; }
        public double OverDraftLimit {get; set; }
        public string AccountType { get; set; }
    }
}