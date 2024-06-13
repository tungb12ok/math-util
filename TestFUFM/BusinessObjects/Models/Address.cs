using System;
using System.Collections.Generic;

namespace BusinessObjects.Models;

public partial class Address
{
    public int AddressId { get; set; }

    public int UserId { get; set; }

    public string SpecificAddress { get; set; } = null!;

    public virtual User User { get; set; } = null!;
}
