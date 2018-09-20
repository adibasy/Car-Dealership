using System;
using System.Web;
using DibasyAuto.App_Code;
using System.Web.Script.Serialization;

namespace DibasyAuto
{
    public partial class ContactUs : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //The first time the page loads is not a postback
            if (!IsPostBack)
            {
                Person p = new Person();
                p.FirstName = "John";
                p.LastName = "Adams";
                p.address.Address1 = "100 Pennsylvania Ave";
                p.address.Address2 = "apt 12";
                p.address.City = "Dunport Circle";
                p.address.Country = "USA";
                p.address.State = "Washington DC";
                p.address.Zip = "21204";
                JavaScriptSerializer JSS = new JavaScriptSerializer();
        string JSONObject = JSS.Serialize(p);
      //  lblJSON.Text = JSONObject;
            }
            else
            {
                HttpCookie JSON = Request.Cookies.Get("JSON");
                if (JSON != null)
                {
                    JavaScriptSerializer JSS = new JavaScriptSerializer();

                    Person p = JSS.Deserialize<Person>(JSON.Value);
                    txtFname.Text = p.FirstName;
                    txtLName.Text = p.LastName;
                    txtAdd1.Text = p.address.Address1;
                    txtAdd2.Text = p.address.Address2;
                    txtCity.Text = p.address.City;
                    txtCountry.Text = p.address.Country;
                    txtState.Text = p.address.State;
                    txtZip.Text = p.address.Zip;
                } 
            }
        }
          

    }
}
