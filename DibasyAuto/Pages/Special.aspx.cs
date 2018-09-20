using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DibasyAuto
{
    public partial class Special : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
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
                    GridView1.DataSource = cars.ToList();
                    GridView1.DataBind();
                }
                //  stud.fldStudentName = "Joseph Oakes";
                //  entities.SaveChanges();

                //Delete a record
                //==================================
                //stud.fldStudentID = 4;
                //entities.tblStudents.Remove(stud);
                //entities.SaveChanges();

            }

        }
    }
}