using System;
using System.Collections.Generic;

namespace BusinessObjects.Models;

public partial class PaymentMethod
{
    public int Id { get; set; }

    public string? MethodName { get; set; }

    public virtual ICollection<Transaction> Transactions { get; set; } = new List<Transaction>();
}
