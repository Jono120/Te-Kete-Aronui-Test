using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataLayer
{
    public class TopicRepository : ITopicRepository
    {
        private CASScaidContext context;

        public TopicRepository(CASScaidContext context)
        {
            this.context = context;
        }

        public IEnumerable<Topic> GetTopics()
        {
            return context.Topic;
        }

        public Topic GetTopicByID(int id)
        {
            return context.Topic.Find(id);
        }

        public void InsertTopic(Topic topic)
        {
            context.Topic.Add(topic);
        }

        public void DeleteTopicByID(int id)
        {
            Topic c = context.Topic.Find(id);
            context.Topic.Remove(c);
        }

        public void UpdateTopic(Topic topic)
        {
            context.Entry(topic).State = System.Data.Entity.EntityState.Modified;
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
