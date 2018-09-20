using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Script.Serialization;
using DibasyAuto.App_Code;

namespace DibasyAuto.Handlers
{
    /// <summary>
    /// Summary description for JSONAJAX
    /// </summary>
    public class JSONAJAX : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            context.Response.Write("Hello World");

            context.Response.ContentType = "text/plain";
            Person p = new Person();
            p.FirstName = "John";
            p.LastName = "Adams";
            p.address.Address1 = "100 Pennsylvania Ave";
            p.address.Address2 = "apt 12";

            p.address.State = "Washington DC";
            p.address.Zip = "21204";
            p.address.Country = "USA";
            JavaScriptSerializer JSS = new JavaScriptSerializer();
            string JSONObject = JSS.Serialize(p);
            context.Response.Write(JSONObject);

        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}