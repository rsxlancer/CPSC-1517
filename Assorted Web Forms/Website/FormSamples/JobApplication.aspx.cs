using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using AppDev1.Demos.Data;

public partial class FormSamples_JobApplication : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Submit_Click(object sender, EventArgs e)
    {
        if (IsValid)
        {
            // 1) create CBO instance (the JobApplication object)
            JobApplication applicant = new JobApplication();

            // 2) get the info from the controls
            applicant.Name = FullName.Text;
            applicant.Email = EmailAddress.Text;
            applicant.PhoneNumber = PhoneNumber.Text;

            // get full or part time input
            if (FullOrPartTime.SelectedValue.Equals("Full time"))
            {
                applicant.IsFullTime = true;
            }

            //Get the jobs- I used the generc List<T> in my CBO
            //b/c it's easier to add items than a regular aray

            foreach (ListItem item in Jobs.Items)
            {
                if (item.Selected)
                {
                    applicant.Jobs.Add(item.Value);
                }
            }

            //put the output on the web page, just to show that we were able to create an object
            ShowTheFormResult(applicant);
        }
    }
    public void ShowTheFormResult(JobApplication Applicant)
    {
        string linebreak = "<br />";
        FormResults.Text = "the following object wascreated : " + linebreak;
        FormResults.Text += "Person: " + Applicant.Name;
        FormResults.Text += ", Phone: " + Applicant.PhoneNumber + linebreak;
        FormResults.Text += "Email: " + Applicant.Email + linebreak;
        FormResults.Text += "Number of jobs applied for: " + Applicant.Jobs.Count + linebreak;
    }
}