using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FormSamples.CBOs;// So i can use the entry class

public partial class FormSamples_ContestEntry : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Submit_Click(object sender, EventArgs e)
    {
        //This is the method that will be called when the user clicks the submit button

        //1) Get the user's input and package it into a CBO
        Entry entrant = new Entry();
        entrant.FirsName = FirstName.Text;
        entrant.LastName =  LastName.Text;
        entrant.StreetAddress1 = StreetAddress1.Text;
        entrant.StreetAddress2 = StreetAddress2.Text;
        entrant.City = City.Text;
        entrant.Province = Province.Text;
        entrant.PostalCode = PostalCode.Text;
        entrant.Email = Email.Text;
        
        //2) Do something with the users input (passing the CBO to the method)
        DisplayEntry(entrant);
    }
    private void DisplayEntry(Entry ContestEntrant)
    {
        MessageLabel.Text = "Thank You " + ContestEntrant.FirsName + " "
                            + ContestEntrant.LastName + ". "
                            + "Your contest entry is being processed,";
    }
}