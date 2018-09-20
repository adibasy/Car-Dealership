using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using ZedGraph;
using ZedGraph.Web;
using System.Drawing;
using System.Configuration;
using log4net;
using DibasyAuto.App_Code;

namespace DibasyAuto.Pages
{
    public partial class AboutUs : System.Web.UI.Page
    {
        private static readonly ILog logger = log4net.LogManager.GetLogger(
            System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);
 
        protected void Page_Load(object sender, EventArgs e)
        {
            log4net.Config.XmlConfigurator.Configure();
            try
            {
                string connectionInfo = ConfigurationManager.AppSettings["ChartImageHandler"];
                DataSet ds = new DataSet();
                ds.ReadXml(MapPath(".") + "/../App_Data/SalesSummary.xml");
                DataTable dt = ds.Tables[0];
                DataView dataView = new DataView(dt);
                Chart1.Series[0].Points.DataBindXY(dataView, "day", dataView, "totalSales");
            }
            catch (Exception ex)
            {
                //ExceptionUtility.LogException(ex, "Calendar Issue");
                logger.Error("login Error", ex);
            }
        }
        protected void ZedGraphWeb1_RenderGraph(ZedGraphWeb webObject,
        Graphics g, MasterPane pane)
        {
            //GraphPane class came from the ZedGraph DLL
            GraphPane myPane = pane[0]; //create an empty Graph Pane object
            myPane.Title.Text = "Title"; //Title text property of pane object
            myPane.XAxis.Title.Text = "X axis label"; //Title X axis label text property
            myPane.YAxis.Title.Text = "Y axis label"; //Title Y axis label text property
            //PointPairList class came from the ZedGraph DLL
            PointPairList list1 = new PointPairList(); //New Point Pair List object
            //Create some plotting line to display
            for (int i = 0; i < 10; i++)
            {
                double x = Convert.ToDouble(i);
                double y = x * x;
                list1.Add(x, y);
            }
            //Use a LineItem type chart came from the ZedGraph DLL
            string textForLegend = "x-squared";
            myPane.CurveList.Clear();
            LineItem myCurve = myPane.AddCurve(textForLegend,
              list1, Color.Red, SymbolType.Diamond);
            myCurve.Symbol.IsVisible = true;
        }

        /*
        protected void ZedGraphWeb2_RenderGraph(ZedGraphWeb zg1, Graphics g, MasterPane pane)
        {
            // get a reference to the GraphPane
            GraphPane myPane = pane[0];

            // Set the Titles
            myPane.Title.Text = "My Test Bar Graph";
            myPane.XAxis.Title.Text = "Label";
            myPane.YAxis.Title.Text = "My Y Axis";

            // Make up some random data points
            string[] labels = { "Panther", "Lion", "Cheetah",
                      "Cougar", "Tiger", "Leopard" };
            double[] y = { 100, 115, 75, 22, 98, 40 };
            double[] y2 = { 90, 100, 95, 35, 80, 35 };
            double[] y3 = { 80, 110, 65, 15, 54, 67 };
            double[] y4 = { 120, 125, 100, 40, 105, 75 };

            // Generate a red bar with "Curve 1" in the legend
            BarItem myBar = myPane.AddBar("Curve 1", null, y,
                                                        Color.Red);
            myBar.Bar.Fill = new Fill(Color.Red, Color.White,
                                                        Color.Red);

            // Generate a blue bar with "Curve 2" in the legend
            myBar = myPane.AddBar("Curve 2", null, y2, Color.Blue);
           myBar.Bar.Fill = new Fill(Color.Blue, Color.White,
                                                        Color.Blue);

            // Generate a green bar with "Curve 3" in the legend
            myBar = myPane.AddBar("Curve 3", null, y3, Color.Green);
            myBar.Bar.Fill = new Fill(Color.Green, Color.White,
                                                        Color.Green);

            // Generate a black line with "Curve 4" in the legend
            LineItem myCurve = myPane.AddCurve("Curve 4",
                  null, y4, Color.Black, SymbolType.Circle);
            myCurve.Line.Fill = new Fill(Color.White,
                                  Color.LightSkyBlue, -45F);

            // Fix up the curve attributes a little
            myCurve.Symbol.Size = 8.0F;
            myCurve.Symbol.Fill = new Fill(Color.White);
            myCurve.Line.Width = 2.0F;

            // Draw the X tics between the labels instead of 
            // at the labels
            myPane.XAxis.MajorTic.IsBetweenLabels = true;

            // Set the XAxis labels
            myPane.XAxis.Scale.TextLabels = labels;
            // Set the XAxis to Text type
            myPane.XAxis.Type = AxisType.Text;

            // Fill the Axis and Pane backgrounds
            myPane.Chart.Fill = new Fill(Color.White,
                  Color.FromArgb(255, 255, 166), 90F);
            myPane.Fill = new Fill(Color.FromArgb(250, 250, 255));

            // Tell ZedGraph to refigure the
            // axes since the data have changed
            //zg1.AxisChanged();
        }
            */

    }
}