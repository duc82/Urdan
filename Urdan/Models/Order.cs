using Microsoft.EntityFrameworkCore;
using System.ComponentModel.DataAnnotations;

namespace Urdan.Models
{
	public class Order
	{
		[Key]
		public int Id { get; set; }
		public int UserId { get; set; }
		public string Status { get; set; }
		[Precision(18, 2)]
		public decimal Total { get; set; }
		public DateTime CreatedAt { get; set; } = DateTime.Now;
		public DateTime DeliveryDate { get; set; } = DateTime.Now.AddDays(3);
		public virtual User? User { get; set; }
		public virtual ICollection<OrderItem>? OrderItems { get; set; }
	}
}
