using Microsoft.AspNetCore.Mvc;
using Urdan.Data;
using Urdan.Extensions;
using Urdan.Models;
using Urdan.Services;

namespace Urdan.Controllers
{
	public class CartController : Controller
	{
		private readonly UrdanContext _context;
		private readonly IProductService _productService;
		public CartController(UrdanContext context, IProductService productService)
		{
			_context = context;
			_productService = productService;
		}
		public IActionResult Index()
		{
			Cart? cart = HttpContext.Session.GetObject<Cart>("Cart");
			return View(cart);
		}

		[HttpGet("/Cart/AddToCart/{productId}")]
		public async Task<IActionResult> AddToCart(int productId, string? color, int quantity = 1)
		{
			var product = await _productService.FirstOrDefaultAsync(p => p.Id == productId);
			if (product == null)
			{
				return NotFound();
			}
			Cart cart = HttpContext.Session.GetObject<Cart>("Cart") ?? new Cart();
			int cartIndex = cart.CartItems.FindIndex(c => c.ProductId == productId);
			if (cartIndex == -1)
			{
				cart.CartItems.Add(new CartItem { ProductId = productId, ProductName = product.Name, Image = product.Images.First().Url, Color = color ?? product.Colors.First().Name, Price = product.Price, Quantity = 1 });
			}
			else
			{
				cart.CartItems[cartIndex].Quantity += quantity;
			}
			cart.Count += quantity;
			cart.PriceTotal += product.PriceTotal * quantity;


			HttpContext.Session.SetObject("Cart", cart);

			return RedirectToAction("Index", "Cart");
		}
	}
}
