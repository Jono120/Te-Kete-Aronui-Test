using DataLayer;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Text;

namespace CASScaid.Controllers
{
    class TopicContext : DbContext
    {
        public DbSet<Category> Category { get; set; }
        public DbSet<RSSFeed> RSSFeeds { get; set; }
        public DbSet<Topic> Topic { get; set; }
        public DbSet<Team> Team { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            base.OnModelCreating(modelBuilder);
        }
    }
}
