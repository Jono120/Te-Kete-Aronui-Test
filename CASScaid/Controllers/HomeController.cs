using DataLayer;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace CASScaid.Controllers
{
    public class HomeController : Controller
    {
        private ICategoryRepository categoryRepository;
        private ITopicRepository topicRepository;
        //private ITeamRepository teamRepository;
        //private IRssRepository rssRepository;

        public HomeController() //: this(new CategoryRepository(), new TopicRepository())
        {
            //points to the repositories that have the required information that is used
            categoryRepository = new CategoryRepository(new CASScaidContext());
            topicRepository = new TopicRepository(new CASScaidContext());
            //teamRepository = new TeamRepository(new CASScaidContext());
            //rssRepository = new RssRepository(new CASScaidContext());

        }

        public HomeController(ICategoryRepository categoryRepository/*, ITopicRepository topicRepository*/)
        {
            //contains the category repository definitions
            this.categoryRepository = categoryRepository;
        }

        public HomeController(ITopicRepository topicRepository)
        {
            //contains the topic repository definitions
            this.topicRepository = topicRepository;
        }

        /*
        
        public HomeController(ITeamRepository teamRepository)
        {
            contains the team repository definitions
            this.teamRepository = teamRepository;
        }
         
         */

        public ActionResult Index()
        {
            //directs the website to the repositories that are defined
            //IEnumerable<Category> allCategories = categoryRepository.GetCategories().ToList();
            IEnumerable<Topic> allTopic = topicRepository.GetTopics();

            return View();
        }

        public ActionResult About()
        {
            //Redirects user to the About page for more information
            ViewBag.Message = "What is Te Kete Aronui all about?";

            return View();
        }

        public ActionResult Contact()
        {
            //Redirects user to the contact page
            ViewBag.Message = "Relevant Contacts.";

            return View();
        }
        //public ActionResult Search(string q)
        //{
        //    //q = random words not needing to remove '+'sign
        //    var Topic = GetSearchResults(q);
        //    return View(Topic);
        //}
    }
}