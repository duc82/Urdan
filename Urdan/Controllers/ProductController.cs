using Microsoft.AspNetCore.Mvc;

namespace Urdan.Controllers
{
	public class ProductController : Controller
	{
		[HttpGet("/Product/{name}")]
		public IActionResult Index(string name)
		{
			ViewBag.ProductName = name;
			return View();
		}
	}
}
