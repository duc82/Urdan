using System.ComponentModel.DataAnnotations;

namespace Urdan.Models
{
	public class Address
	{
		[Key]
		public int Id { get; set; }
		public int UserId { get; set; }
		public string Ward { get; set; }
		public string District { get; set; }
		public string City { get; set; }
		public string Detail { get; set; }
		public virtual User? User { get; set; }
	}
}
