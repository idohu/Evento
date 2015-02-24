using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.ServiceModel.Web;
using System.Web;
using System.Web.Services;
using Newtonsoft.Json;

namespace EventoServices
{
    /// <summary>
    /// Summary description for Service1
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class Service1 : System.Web.Services.WebService
    {

        [WebMethod]
        [WebInvoke(Method = "POST",
        BodyStyle = WebMessageBodyStyle.Wrapped,
        ResponseFormat = WebMessageFormat.Json)]
        public string GetEventsForManager(string managerName)
        {
            List<EventType> eventList = new List<EventType>();
            using (EventoDBEntities eventoDbEntities = new EventoDBEntities())
            {
                var data =
                    eventoDbEntities.Events.ToList();
                return JsonConvert.SerializeObject(data, Formatting.Indented);
            }
            return JsonConvert.SerializeObject(eventList, Formatting.Indented);
        }
    }

    public class EventType
    {

    }
}