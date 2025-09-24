using System;
using System.Collections.Generic;

namespace EventEase_.Models;

public partial class Event
{
    public int EventId { get; set; }

    public int? VenueId { get; set; }

    public string EventName { get; set; } = null!;

    public string EventDate { get; set; } = null!;

    public string Description { get; set; } = null!;

    public virtual ICollection<Booking> Bookings { get; set; } = new List<Booking>();

    public virtual Venue? Venue { get; set; }
}
