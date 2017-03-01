using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataLayer
{
    public class CategoryRepository : ICategoryRepository
    {
        private CASScaidContext context;

        public CategoryRepository(CASScaidContext context)
        {
            this.context = context;
        }

        public IEnumerable<Category> GetCategories()
        {
            try
            {
                return context.Category;
            }
            catch (Exception e)
            {
                return null;
            }
            
        }

        public Category GetCategoryByID(int id)
        {
            return context.Category.Find(id);
        }

        public void InsertCategory(Category category)
        {
            context.Category.Add(category);
        }

        public void DeleteCategoryByID(int id)
        {
            Category c = context.Category.Find(id);
            context.Category.Remove(c);
        }

        public void UpdateCategory(Category category)
        {
            context.Entry(category).State = System.Data.Entity.EntityState.Modified;
        }

        public void SaveChanges()
        {
            context.SaveChanges();
        }

        private bool disposed = false;

        protected virtual void Dispose(bool disposing)
        {
            if (!this.disposed)
            {
                if (disposing)
                {
                    context.Dispose();
                }
            }
            this.disposed = true;
        }

        public void Dispose()
        {
            Dispose(true);
            GC.SuppressFinalize(this);
        }
    }
}
