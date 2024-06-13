using System;
using System.Collections.Generic;

namespace BusinessObjects.Models;

public partial class Transaction
{
    public int OrderId { get; set; }

    public DateTime? Date { get; set; }

    public int? PaymentMethod { get; set; }

    public decimal? Amount { get; set; }

    public bool? Status { get; set; }

    public string? Description { get; set; }

    public virtual Order Order { get; set; } = null!;

    public virtual PaymentMethod? PaymentMethodNavigation { get; set; }
}
