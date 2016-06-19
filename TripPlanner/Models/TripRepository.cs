using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TripPlanner.Models
{

	public class TripRepository : IDisposable
	{

		private static readonly List<Trip> _Trips = new List<Trip>
		{

			new Trip {ID=1, Destination="Brooklyn", Departure=DateTime.Parse("6/12/2016"), Return=DateTime.Parse("6/13/2016"), Distance=115 },
			new Trip {ID=2, Destination="Boston", Departure=DateTime.Parse("6/13/2016"), Return=DateTime.Parse("6/14/2016"), Distance=320 },
			new Trip {ID=3, Destination="Seattle", Departure=DateTime.Parse("7/25/2016"), Return=DateTime.Parse("7/29/2016"), Distance=2780 },
			new Trip {ID=4, Destination="Jacksonville", Departure=DateTime.Parse("8/11/2016"), Return=DateTime.Parse("8/14/2016"), Distance=860 },
			new Trip {ID=5, Destination="Las Vegas", Departure=DateTime.Parse("10/24/2016"), Return=DateTime.Parse("10/29/2016"), Distance=2465 },
			new Trip {ID=6, Destination="Atlanta", Departure=DateTime.Parse("9/25/2016"), Return=DateTime.Parse("9/27/2016"), Distance=800 }

		};

		#region Disposal Pattern

		~TripRepository()
		{
			Dispose(false);
		}

		public void Dispose()
		{
			Dispose(true);
		}

		protected virtual void Dispose(bool isDisposing)
		{
			if (isDisposing)
			{
				GC.SuppressFinalize(this);
			}

			// do something disposal-ish

		}

		#endregion

		public IQueryable<Trip> Get()
		{
			return _Trips.AsQueryable();
		}

		public Trip GetById(int id)
		{
			return _Trips.FirstOrDefault(t => t.ID == id);
		}

	}

}