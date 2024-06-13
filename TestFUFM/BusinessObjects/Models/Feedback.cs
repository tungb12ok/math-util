using System;
using System.Collections.Generic;

namespace BusinessObjects.Models;

public partial class Feedback
{
    public int FeedbackId { get; set; }

    public string Content { get; set; } = null!;

    public int Rating { get; set; }

    public int OrderId { get; set; }

    public virtual Order Order { get; set; } = null!;
}
