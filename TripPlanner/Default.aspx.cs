using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;
using TripPlanner.Models;

namespace TripPlanner
{
	public partial class _Default : Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
		}

		[WebMethod]
		public static IQueryable<Trip> GetTrips()
		{
			using (var repo = new TripRepository())
			{
				return repo.Get();
			}
		}

	}
}