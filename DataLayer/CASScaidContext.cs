using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.Entity;

namespace DataLayer
{
    public class CASScaidContext : System.Data.Entity.DbContext
    {
        public DbSet<Category> Category { get; set; }
        public DbSet<RSSFeed> RssFeeds { get; set; }
        public DbSet<Topic> Topic { get; set; }
        public DbSet<Team> Team { get; set; }
        public DbSet<Website> Website { get; set; }
        public DbSet<Content> Content { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            base.OnModelCreating(modelBuilder);
        }

    }
}
