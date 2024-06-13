using System;
using System.Collections.Generic;

namespace BusinessObjects.Models;

public partial class Order
{
    public int OrderId { get; set; }

    public DateTime OrderDate { get; set; }

    public decimal Price { get; set; }

    public int BuyerId { get; set; }

    public int SellerId { get; set; }

    public int Status { get; set; }

    public string? Note { get; set; }

    public int ProductId { get; set; }

    public int Quantity { get; set; }

    public DateTime? DeliveryDate { get; set; }

    public string ReceiverAddress { get; set; } = null!;

    public virtual User Buyer { get; set; } = null!;

    public virtual ICollection<Feedback> Feedbacks { get; set; } = new List<Feedback>();

    public virtual Product Product { get; set; } = null!;

    public virtual User Seller { get; set; } = null!;

    public virtual Status StatusNavigation { get; set; } = null!;

    public virtual Transaction? Transaction { get; set; }
}
