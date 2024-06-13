using System;
using System.Collections.Generic;

namespace BusinessObjects.Models;

public partial class Product
{
    public int ProductId { get; set; }

    public string ProductName { get; set; } = null!;

    public decimal Price { get; set; }

    public bool IsNew { get; set; }

    public string Description { get; set; } = null!;

    public int SellerId { get; set; }

    public int CategoryId { get; set; }

    public int Status { get; set; }

    public DateTime? CreatedDate { get; set; }

    public virtual Category Category { get; set; } = null!;

    public virtual ICollection<Order> Orders { get; set; } = new List<Order>();

    public virtual ICollection<ProductImage> ProductImages { get; set; } = new List<ProductImage>();

    public virtual User Seller { get; set; } = null!;

    public virtual ICollection<User> Users { get; set; } = new List<User>();
}
