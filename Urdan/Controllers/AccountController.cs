using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Urdan.Data;
using Urdan.Models;
using Urdan.Services;

namespace Urdan.Controllers
{
	public class AccountController : Controller
	{
		private readonly UrdanContext _context;
		private readonly IUserService _userService;

		public AccountController(UrdanContext context, IUserService userService)
		{
			_context = context;
			_userService = userService;
		}

		private bool IsLoggedIn()
		{
			var Id = HttpContext.Session.GetInt32("Id");
			if (Id == null)
			{
				return false;
			}
			// Check if the user has been deleted
			var user = _context.Users.FirstOrDefault(u => u.Id == Id);
			if (user == null)
			{
				return false;
			}

			return true;
		}


		// GET: /Account
		public async Task<IActionResult> Index()
		{
			bool isLoggedIn = IsLoggedIn();
			if (!isLoggedIn)
			{
				return RedirectToAction(nameof(Login));
			}

			var Id = HttpContext.Session.GetInt32("Id");
			var user = await _userService.FirstOrDefaultAsync(u => u.Id == Id);

			return View(user);
		}

		// GET: /Account/Register
		public IActionResult Register()
		{
			bool isLoggedIn = IsLoggedIn();
			if (isLoggedIn)
			{
				return RedirectToAction(nameof(Index));
			}
			return View();
		}

		// GET: /Account/Login
		public IActionResult Login()
		{
			bool isLoggedIn = IsLoggedIn();
			if (isLoggedIn)
			{
				return RedirectToAction(nameof(Index));
			}
			return View();
		}


		// POST: /Account/HandleRegister 
		[HttpPost]
		[ValidateAntiForgeryToken]
		public async Task<IActionResult> HandleRegister(User userModel)
		{
			if (ModelState.IsValid)
			{
				var usernameExists = await _context.Users.FirstOrDefaultAsync(u => u.Username == userModel.Username);

				if (usernameExists != null)
				{
					ModelState.AddModelError("Username", "The username already exists");
					return View(nameof(Register));
				}

				var emailExists = await _context.Users.FirstOrDefaultAsync(u => u.Email == userModel.Email);
				if (emailExists != null)
				{
					ModelState.AddModelError("Email", "Email address already exists");
					return View(nameof(Register));
				}

				string salt = BC.GenerateSalt(10);
				string hashedPassword = BC.HashPassword(userModel.Password, salt);
				userModel.Password = hashedPassword;
				await _context.AddAsync(userModel);
				await _context.SaveChangesAsync();
				return RedirectToAction(nameof(Login));
			}

			return View(nameof(Register));
		}


		// POST: /Account/HandleLogin
		[HttpPost]
		[ValidateAntiForgeryToken]
		public async Task<IActionResult> HandleLogin(string Username, string Password)
		{
			if (ModelState.IsValid)
			{
				var user = await _context.Users.FirstOrDefaultAsync(x => x.Username == Username);

				if (user != null && BC.Verify(Password, user.Password))
				{
					HttpContext.Session.SetInt32("Id", user.Id);
					return RedirectToAction(nameof(Index));
				}

				ModelState.AddModelError("CustomError", "Invalid username or password");

			}
			return View(nameof(Login));
		}


		// POST: /Account/Logout
		[HttpPost]
		[ValidateAntiForgeryToken]
		public IActionResult Logout()
		{
			HttpContext.Session.Clear();
			return RedirectToAction(nameof(Login));
		}
	}
}
