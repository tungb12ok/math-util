using System;
using System.Collections.Generic;

namespace BusinessObjects.Models;

public partial class PromotionOrder
{
    public int PromoOrderId { get; set; }

    public DateTime StartDate { get; set; }

    public DateTime EndDate { get; set; }

    public int UserId { get; set; }

    public decimal Price { get; set; }

    public int ProductQuantity { get; set; }

    public int PromotionId { get; set; }

    public virtual Promotion Promotion { get; set; } = null!;

    public virtual User User { get; set; } = null!;
}
