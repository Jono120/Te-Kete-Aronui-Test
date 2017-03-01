using DataLayer;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity.Infrastructure;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;

namespace CASScaid.Controllers
{
    public class TopicController : Controller
    {
        //private ITopicRepository repository;

        private TopicContext db = new TopicContext();

        // GET: Topic
        public JsonResult Index(string sortOrder, string currentFilter, string searchString, int? page)
        {
            ViewBag.CurrentSort = sortOrder;
            ViewBag.NameSortParm = String.IsNullOrEmpty(sortOrder) ? "name_desc" : "";
            ViewBag.DateSortParm = sortOrder == "Date" ? "date_desc" : "Date";

            if (searchString != null)
            {
                page = 1;
            }
            else
            {
                searchString = currentFilter;
            }

            ViewBag.CurrentFilter = searchString;

            IEnumerable<Topic> topic = null;
            if (!String.IsNullOrEmpty(searchString))
            {
                topic = db.Topic.Where(t => t.TopicName.Contains(searchString)).OrderBy(t => t.TopicName);
            }

            return Json(topic);
        }

        //public TopicController()
        //{
        //    //points to the repositories that have the required information that is used
        //    repository = new TopicRepository(new CASScaidContext());
        //}

        //public TopicController(ITopicRepository topicRepository)
        //{
        //    //contains the category repository definitions
        //    this.repository = topicRepository;
        //}

        //public ActionResult Index()
        //{
        //    //directs the website to the repositories that are defined
        //    IEnumerable<Topic> allTopics = repository.GetTopics();
        //    return View();
        //}

        // GET: Topic/Details/5
        public ActionResult Details(int id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Topic topic = db.Topic.Find(id);
            if (topic == null)
            {
                return HttpNotFound();
            }
            return View(topic);
        }

        // GET: Topic/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Topic/Create
        [HttpPost]
        public ActionResult Create(FormCollection collection)
        {
            try
            {
                // TODO: Add insert logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // TODO: Add insert logic here
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "TopicID, TopicName, TopicTypeID")]Topic topic)
        {
            try
            {
                if (ModelState.IsValid)
                {
                    db.Topic.Add(topic);
                    db.SaveChanges();
                    return RedirectToAction("Index");
                }
            }
            catch (RetryLimitExceededException /* dex */)
            {
                //Log the error (uncomment dex variable name and add a line here to write a log.
                ModelState.AddModelError(" ", "Unable to save changes. Try again, and if the problem persists see your system administrator.");
            }
            return View(topic);
        }


        // GET: Topic/Edit/5
        public ActionResult Edit(int id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Topic topic = db.Topic.Find(id);
            if (topic == null)
            {
                return HttpNotFound();
            }
            return View(topic);
        }

        // POST: Topic/Edit/5
        [HttpPost]
        public ActionResult Edit(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add update logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: Topic/Delete/5
        public ActionResult Delete(int id)
        {
            return View();
        }

        // POST: Topic/Delete/5
        [HttpPost]
        public ActionResult Delete(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add delete logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }
    }
}
