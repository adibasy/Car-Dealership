using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DibasyAuto.Pages
{
    public partial class Product : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            //If not a Postback - which is the first time the page loads
            if (!IsPostBack)
            {
                //New DataSet object - productCatalog 
                DataSet productCatalog = new DataSet();
                //Read the contents of the XML file into the DataSet
                productCatalog.ReadXml(MapPath("~/App_Data/ProductCatalog.xml"));
                //Set the productCatalog Data to the repeater control - pCatalog
                pCatalog.DataSource = productCatalog;
                //Bind the data to the repeater control
                pCatalog.DataBind();

            }
        }
    }
}