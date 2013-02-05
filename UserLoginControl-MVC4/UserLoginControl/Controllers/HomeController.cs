using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace UserLoginControl.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            if (User.Identity.IsAuthenticated)
            {
                ViewBag.Message = "This is a basic ASP.NET MVC application which uses asp.net membership to control user logins.";

                return View();
            }
            else
            {
                return RedirectToAction("LogOn", "Account", routeValues: null);
            }
        }

        public ActionResult About()
        {
            if (User.Identity.IsAuthenticated)
            {
                ViewBag.Message = "Your quintessential app description page.";

                return View();
            }
            else
            {
                return RedirectToAction("LogOn", "Account", routeValues: null);
            }
        }

        public ActionResult Contact()
        {
            if (User.Identity.IsAuthenticated)
            {
                ViewBag.Message = "Your quintessential contact page.";

                return View();
            }
            else
            {
                return RedirectToAction("LogOn", "Account", routeValues: null);
            }
        }
    }
}
