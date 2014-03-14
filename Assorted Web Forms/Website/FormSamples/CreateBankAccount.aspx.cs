using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using AppDev1.Demos.Data;//include this namespace so we can use the BankAccount class

public partial class FormSamples_CreateBankAccount : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

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
