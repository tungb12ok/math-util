using System;
using System.Collections.Generic;

namespace BusinessObjects.Models;

public partial class ProductImage
{
    public int ProductId { get; set; }

    public string ImageName { get; set; } = null!;

    public string ImageLink { get; set; } = null!;

    public virtual Product Product { get; set; } = null!;
}
