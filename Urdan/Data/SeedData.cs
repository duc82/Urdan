using Microsoft.EntityFrameworkCore;
using Urdan.Models;

namespace Urdan.Data
{
	public class SeedData
	{
		public static void Seed(IServiceProvider serviceProvider)
		{
			using (UrdanContext context = new UrdanContext(serviceProvider.GetRequiredService<DbContextOptions<UrdanContext>>()))
			{
				if (context.Categories.Any())
				{
					return;
				}
				else
				{
					context.Categories.AddRange(
						new Category
						{
							Name = "Sofa"
						},
						new Category
						{
							Name = "Chair"
						},
						new Category
						{
							Name = "Decoration"
						},
						new Category
						{
							Name = "Bookshelf"
						},
						new Category
						{
							Name = "Table"
						},
						new Category
						{
							Name = "Wardrobe"
						}
				);
				}



				context.SaveChanges();
			}
		}
	}
}
