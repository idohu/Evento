using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Runtime.Remoting.Messaging;
using System.Web;
using Newtonsoft.Json;

namespace Evento.DataAccessLayer
{
    public static class DataAccess
    {
        public static DataTable GetEventsForUser(string managerName)
        {
            DataTable dt = new DataTable();
            dt.Columns.Add(new DataColumn("EventName"));
            dt.Columns.Add(new DataColumn("EventTime"));
            dt.Columns.Add(new DataColumn("Description"));
            dt.Columns.Add(new DataColumn("Artist"));
            dt.Columns.Add(new DataColumn("Location"));
            dt.Columns.Add(new DataColumn("EventManager"));
            using (EventoDBEntities eventoDbEntities = new EventoDBEntities())
            {
                var data = eventoDbEntities.Events.Where(x => x.Manager.ManagerName == managerName).ToList();
                foreach (Event @event in data)
                {
                    DataRow r = dt.NewRow();
                    r["EventName"] = @event.EventName;
                    r["EventTime"] = @event.Time;
                    r["Description"] = @event.Description;
                    r["Artist"] = @event.Artist;
                    r["Location"] = @event.Location;
                    r["EventManager"] = @event.Manager;
                    dt.Rows.Add(r);
                }
            }
            return dt;
        }
        
    }
}