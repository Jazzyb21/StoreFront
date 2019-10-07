using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using StoreFront.UI.MVC.Models;
using System.Net.Mail;
using System.Net;

namespace StoreFront.UI.MVC.Controllers
{
    public class HomeController : Controller
    {
        [HttpGet]
        public ActionResult Index()
        {
            return View();
        }

        [HttpGet]
        //[Authorize]
        public ActionResult About()
        {
            ViewBag.Message = "Your app description page.";

            return View();
        }

        [HttpGet]
        public ActionResult Contact()
        { 
            return View();
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Contact(ContactViewModel cvm)
        {
            if(!ModelState.IsValid)
            {
                return View(cvm);
            }
            string message = $"You have recieved an email from {cvm.Name} with a subject of {cvm.Subject}. Please respond to {cvm.Email} with your response to the following message: </br> {cvm.Message}";

            MailMessage mm = new MailMessage("admin@coderjaz.com", "jasmyne.boggs@outlook.com", cvm.Subject, message);

            mm.IsBodyHtml = true;
            mm.Priority = MailPriority.High;
            mm.ReplyToList.Add(cvm.Email);

            SmtpClient client = new SmtpClient("mail.coderjaz.com");

            client.Credentials = new NetworkCredential("admin@coderjaz.com", "Kw_06391");

            try
            {
                client.Send(mm);
            }
            catch (Exception ex)
            {
                ViewBag.CustomerMessage = "We are sorry. Your request could not be completed at this time. Please try again later. Error Message: <br/> " + ex.StackTrace;
                return View(cvm);
            }

            return View("EmailConfirmation", cvm);
        }
    }
}
