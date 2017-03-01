using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataLayer
{
    public interface ICategoryRepository : IDisposable
    {
        IEnumerable<Category> GetCategories();
        Category GetCategoryByID(int id);
        void InsertCategory(Category category);
        void DeleteCategoryByID(int id);
        void UpdateCategory(Category category);
        void SaveChanges();
    }
}
