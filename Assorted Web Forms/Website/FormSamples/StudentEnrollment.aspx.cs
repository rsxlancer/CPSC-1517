﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

partial class FormSamples_StudentEnrollment : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
	{
        if (!IsPostBack)
		{
            int year = DateTime.Today.Year + 1;
            int endYear = year + 4;
            while (year < endYear)
			{
                this.SchoolYear.Items.Add(year.ToString());
                year = year + 1;
		     }
        }
    }
    protected void Submit_Click(object sender, EventArgs e)
    {

    }
    protected void ClearForm_Click(object sender, EventArgs e)
    {
        FirstName.Text = "";
        LastName.Text = "";
        MiddleName.Text = "";
        SocialInsuranceNumber.Text = "";
        ProgramOfStudy.SelectedIndex = 0;
        DateOfBirth.Text = "";
        SchoolYear.SelectedIndex = 0;
        FormResults.Text = "";

    }
}
