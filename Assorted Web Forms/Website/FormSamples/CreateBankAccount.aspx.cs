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
    protected void Submit_Click(object sender, EventArgs e)
    {
        // 1) Create an object to hold information from the user.
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
