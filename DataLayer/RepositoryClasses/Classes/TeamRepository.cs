using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataLayer
{
    public class TeamRepository
    {
        private CASScaidContext context;

        public TeamRepository(CASScaidContext context)
        {
            this.context = context;
        }

        public IEnumerable<Team> GetTeams()
        {
            return context.Team;
        }

        public Team GetTeamByID(int id)
        {
            return context.Team.Find(id);
        }

        public void InsertTeam(Team team)
        {
            context.Team.Add(team);
        }

        public void DeleteTeamByID(int id)
        {
            Team c = context.Team.Find(id);
            context.Team.Remove(c);
        }

        public void UpdateCategory(Team team)
        {
            context.Entry(team).State = System.Data.Entity.EntityState.Modified;
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
