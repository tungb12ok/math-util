using System;
using System.Collections.Generic;

namespace BusinessObjects.Models;

public partial class User
{
    public int UserId { get; set; }

    public string? Password { get; set; }

    public string? FullName { get; set; }

    public string Email { get; set; } = null!;

    public string? PhoneNumber { get; set; }

    public string? Introduction { get; set; }

    public int RoleId { get; set; }

    public bool IsDeleted { get; set; }

    public string? Avarta { get; set; }

    public DateTime CreatedDate { get; set; }

    public virtual ICollection<Address> Addresses { get; set; } = new List<Address>();

    public virtual ICollection<Message> MessageReceivers { get; set; } = new List<Message>();

    public virtual ICollection<Message> MessageSenders { get; set; } = new List<Message>();

    public virtual ICollection<Order> OrderBuyers { get; set; } = new List<Order>();

    public virtual ICollection<Order> OrderSellers { get; set; } = new List<Order>();

    public virtual ICollection<Product> Products { get; set; } = new List<Product>();

    public virtual ICollection<PromotionOrder> PromotionOrders { get; set; } = new List<PromotionOrder>();

    public virtual ICollection<Product> ProductsNavigation { get; set; } = new List<Product>();
}
