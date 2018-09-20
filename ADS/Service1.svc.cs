using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.ServiceModel.Web;
using System.Text;
using ADS.App_Code;


namespace ADS
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "Service1" in code, svc and config file together.
    // NOTE: In order to launch WCF Test Client for testing this service, please select Service1.svc or Service1.svc.cs at the Solution Explorer and start debugging.
    public class Service1 : IService1
    {
        public string GetData(int value)
        {
            return string.Format("You entered: {0}", value);
        }


        public Car GetCar()
        {
            Car cars = new Car();
            cars.carID = 1;
            cars.carMake = "Kia";
            cars.carModel = "Optima";
            cars.carYear = "2011";
            cars.carPrice = 15500.01M;
            
            return cars;

        }

        public string addTwoNumbers(int val1, int val2)
        {
            int value = val1 + val2;
            return string.Format("sum: {0}", value);
        }

        public string subTwoNumbers(int val1, int val2)
        {
            int value = val1 - val2;
            return string.Format("sum: {0}", value);
        }



        public CompositeType GetDataUsingDataContract(CompositeType composite)
        {
            if (composite == null)
            {
                throw new ArgumentNullException("composite");
            }
            if (composite.BoolValue)
            {
                composite.StringValue += "Suffix";
            }
            return composite;
        }
    }
}
