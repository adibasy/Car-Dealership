using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DibasyAuto.Pages
{
    public partial class CarDetails : System.Web.UI.Page
    {
        private int picIdInt;

        protected void Page_Load(object sender, EventArgs e)
        {
            String picId = Request.QueryString["fldCarID"];
         //   picIdInt = int.Parse(picId);

            using (DibasyDBEntities entities = new DibasyDBEntities())
            {
               
                var cars = from s in entities.tblCars where s.fldCarID== picIdInt select s;

                if (cars != null)
                {
                    /* List<Vehicle> picList = cars.ToList<Vehicle>();

                     foreach(Vehicle pic in picList)
                     {
                         pic.fldCarPicName = "~/Images/" + pic.fldCarPicName;
                     }   */
                    carDetails.DataSource = cars.ToList();
                   carDetails.DataBind();
                }
               

            }


        }
    }
}