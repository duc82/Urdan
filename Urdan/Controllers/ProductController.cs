using Microsoft.AspNetCore.Mvc;
using Urdan.Data;
using Urdan.Services;

namespace Urdan.Controllers
{
	public class ProductController : Controller
	{
		private readonly UrdanContext _context;
		private readonly IProductService _productService;

		public ProductController(UrdanContext context, IProductService productService)
		{
			_context = context;
			_productService = productService;
		}

		[HttpGet("/Product/{name}")]
		public async Task<IActionResult> Index(string name)
		{
			var product = await _productService.FirstOrDefaultAsync(p => p.Name == name);

			return View(product);
		}
	}
}
