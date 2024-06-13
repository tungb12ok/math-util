using System;
using System.Collections.Generic;

namespace BusinessObjects.Models;

public partial class Promotion
{
    public int PromotionId { get; set; }

    public string Name { get; set; } = null!;

    public string Description { get; set; } = null!;

    public int Period { get; set; }

    public int ProductQuantity { get; set; }

    public decimal Price { get; set; }

    public bool IsDeleted { get; set; }

    public virtual ICollection<PromotionOrder> PromotionOrders { get; set; } = new List<PromotionOrder>();
}
