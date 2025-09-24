﻿using System;
using System.Collections.Generic;

namespace EventEase_.Models;

public partial class Booking
{
    public int BookingId { get; set; }

    public int? VenueId { get; set; }

    public int? EventId { get; set; }

    public string BookingDate { get; set; } = null!;

    public virtual Event? Event { get; set; }

    public virtual Venue? Venue { get; set; }
}
