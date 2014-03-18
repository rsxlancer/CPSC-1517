using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using AppDev1.Demos.Data;//include this namespace so we can use the BankAccount class

public partial class FormSamples_CreateBankAccount : System.Web.UI.Page
{
    //Property that I will use to represent a bunch of Bank Account objects
    //Internally, this property will use viewstate to store it in the clients browser
    private List<BankAccount> StoredData
    {
        get 
        {
            List<BankAccount> tempData = ViewState["StoredData"] as List<BankAccount>;
            //if its null, we should just create an empty list
            if (tempData == null)
            {
                tempData = new List<BankAccount>();
                ViewState.Add("StoredData", tempData);
            }
            return tempData;
        }
        set
        { 
            //Viewstate is just a key/value dictionary to store objects
            //we are using "StoredData" as the -key- to acccess the object
            ViewState["StoredData"] = value;
        }

    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //show whatever data we have in the gridview

            BankAccountsGridView.DataSource = StoredData;
            BankAccountsGridView.DataBind();
        }
    }

    private bool OtherValidation()
{
bool valid = true;//start optimistic, then look for anything that is not valid
string message = "";

//check for duplicate account numbers

foreach(BankAccount item in StoredData)
{
	int number;
	if(int.TryParse(AccountNumber.Text, out number))
	{
	if(item.AccountNumber.Equals(number))
	{
		valid = false;
		message += "Duplicate bank account numbers are not allowed.";
	}
	}
}

//Special validation for credit cards
if(AccountType.SelectedValue.Equals("Credit"))
{
	double temp;
	if(double.TryParse(OpeningBalance.Text, out temp))//if the opening balance is a double...
	{
		if(temp != 0)
		{
			valid = false;
			message += "Opening balances must be Zero for Credit accounts.";
		}
	}

	if(double.TryParse(OverdraftLimit.Text, out temp))//if the overdraft limit is a double...
	{
		if(temp != 0)
		{
			valid = false;
			message += "Overdraft limits are not allowed for Credit accounts.";
		}
	}
}
else
{
	double temp;
	if(double.TryParse(OpeningBalance.Text, out temp))
	{
		if(temp <= 0)
		{
			valid = false;
			message+= "An opening balance greater than zero is required for nin-Credit accounts.";
		}
	}
}

if( !valid)
{
	FormResults.Text = message;
}

return valid;
}

    private void CleanUpInput()
    {
        //.Trim will rempove all leading and trailing white space 
        AccountHolder.Text = AccountHolder.Text.Trim();
        AccountNumber.Text = AccountNumber.Text.Trim();
        OpeningBalance.Text = OpeningBalance.Text.Trim();
        OverdraftLimit.Text = OverdraftLimit.Text.Trim();
    }

    protected void Submit_Click(object sender, EventArgs e)
    {
        CleanUpInput();
        // 1) Create an object to hold information from the user.
        if(IsValid && OtherValidation())
        {
        BankAccount Account;
        Account = new BankAccount();

        // 2) Take the info the user entered into the form and put it in the object
        Account.AccountHolder = AccountHolder.Text;
        Account.AccountNumber = Convert.ToInt32(AccountNumber.Text);
        Account.Openingbalance = Convert.ToDouble(OpeningBalance.Text);
        Account.OverDraftLimit = Convert.ToDouble(OverdraftLimit.Text);
        Account.AccountType = AccountType.SelectedValue;

        // 3) Do something with the object
        // Put the output on the webpage, just to show that we were able to create an object
        ShowTheFormResult(Account);

        //add the new account to my StoredData and then display it in the GridView
        StoredData.Add(Account);
        BankAccountsGridView.DataSource = StoredData;// give the gridview the data
        BankAccountsGridView.DataBind(); //tell teh gridview to extract data fro display
        }
    } 
    
    protected void ClearForm_Click(object sender, EventArgs e)
    {
        AccountHolder.Text = "";
        AccountNumber.Text = "";
        OpeningBalance.Text = "";
        OverdraftLimit.Text = "";
        //drop down list = set the index position to zero
        AccountType.SelectedIndex = 0;//-1 would be fine also
        FormResults.Text = "";
    }
    
    public void ShowTheFormResult(BankAccount AccountObject)
    {
        string linebreak = "<br />";
        FormResults.Text = "the following objecct was created:" + linebreak + "Person: " +
            AccountObject.AccountHolder + linebreak + "Balance: " + AccountObject.Openingbalance.ToString() +
            linebreak + "Type: " + AccountObject.AccountType;
    }
 
}
