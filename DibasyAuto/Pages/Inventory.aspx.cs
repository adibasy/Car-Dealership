
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using DibasyAuto.App_Code;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DibasyAuto.Pages{
    public partial class Inventory : System.Web.UI.Page{
        protected void Page_Load(object sender, EventArgs e){
            using (DibasyDBEntities entities = new DibasyDBEntities())
            {
                //Insert a Record
                //===================================
                //Create the student stud obect
                //  tblStudent stud = new tblStudent();
                //fill the object with data
                //  stud.fldStudentName = "Joe Oakes";
                //  stud.fldStudentSSN = "666666666";
                //  stud.fldStudentEmail = "joe.oakes@psu.edu";
                //   stud.fldStudentPhone = "555-555-5555";
                //Call the method to add the object to the table
                //   entities.tblStudents.Add(stud);
                //  //Save the changes to the DB
                //   entities.SaveChanges();
                //stud.fldStudentID will contain the record number
                //Update a record
                //==================================
                // var studs = from s in entities.tblStudents select s;
                var cars = from s in entities.tblCars select s;

                if (cars != null)
                {
                   /* List<Vehicle> picList = cars.ToList<Vehicle>();
                    
                    foreach(Vehicle pic in picList)
                    {
                        pic.fldCarPicName = "~/Images/" + pic.fldCarPicName;
                    }   */
                    ListView1.DataSource = cars.ToList();
                    ListView1.DataBind();
                }
                //  stud.fldStudentName = "Joseph Oakes";
                //  entities.SaveChanges();

                //Delete a record
                //==================================
                //stud.fldStudentID = 4;
                //entities.tblStudents.Remove(stud);
                //entities.SaveChanges();

            }

           
            




            
          /*
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
            */
        }
    }
}