using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataLayer
{
    public interface ITeamRepository : IDisposable
    {
        IEnumerable<TeamRepository> GetTeam();
        TeamRepository GetTeamByID(int id);
        void InsertTeam(TeamRepository team);
        void DeleteTeamByID(int id);
        void UpdateTeam(TeamRepository team);
        void SaveChanges();
    }
}
