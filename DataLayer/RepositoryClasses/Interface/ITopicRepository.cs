using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataLayer
{
    public interface ITopicRepository : IDisposable
    {
        IEnumerable<Topic> GetTopics();
        Topic GetTopicByID(int id);
        void InsertTopic(Topic topic);
        void DeleteTopicByID(int id);
        void UpdateTopic(Topic topic);
        void SaveChanges();
    }
}
