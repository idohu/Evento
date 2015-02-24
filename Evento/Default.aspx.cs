using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Evento.EventoService;
using Juice;


namespace Evento
{
    
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable d = DataAccessLayer.DataAccess.GetEventsForUser("ZappaManager");

            var l = from row in d.AsEnumerable()
                                       where new DateTime(int.Parse(row.Field<string>("EventTime").Split(' ')[0].Split('/')[2]),
                                           int.Parse(row.Field<string>("EventTime").Split(' ')[0].Split('/')[0]),
                                           int.Parse(row.Field<string>("EventTime").Split(' ')[0].Split('/')[1])) >= DateTime.Now
                select row;
            foreach (var dataRow in l)
            {
                AccordionPanel panel = new AccordionPanel();
                panel.Title = dataRow["EventName"].ToString();
                rptr_UpComing.AccordionPanels.Add(panel);
            }
            rptr_Previous.DataSource = d;
            rptr_Previous.DataBind();
            
        }

        protected void CreateNewEvent(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(NewEventNameTextBox.Text) || string.IsNullOrEmpty(NewEventLocationTextBox.Text))
                return;
        }
    }

    public class eventDetails
    {
        public string EventName { get; set; }
        public string Link { get; set; }
        public DateTime eventtime;
    }
}