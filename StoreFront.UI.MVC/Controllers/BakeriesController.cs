using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using StoreFront.Data.EF;
using StoreFront.UI.MVC.Models;

namespace StoreFront.UI.MVC.Controllers
{
    public class BakeriesController : Controller
    {
        private StoreFrontEntities db = new StoreFrontEntities();

        // GET: Bakeries
        public ActionResult Index()
        {
            var bakeries = db.Bakeries.Include(b => b.HasGluten).Include(b => b.Season).Include(b => b.TreatCategory).Include(b => b.TreatStatu);
            return View(bakeries.ToList());

        }

        // GET: Bakeries/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Bakery bakery = db.Bakeries.Find(id);
            if (bakery == null)
            {
                return HttpNotFound();
            }
            return View(bakery);
        }

        // GET: Bakeries/Create
        [Authorize(Roles ="Admin")]
        public ActionResult Create()
        {
            ViewBag.HasGlutenID = new SelectList(db.HasGlutens, "HasGlutenID", "GlutenStatus");
            ViewBag.SeasonID = new SelectList(db.Seasons, "SeasonID", "SeasonName");
            ViewBag.TreatCategoryID = new SelectList(db.TreatCategories, "TreatCategoryID", "TreatCategoryName");
            ViewBag.TreatStatusID = new SelectList(db.TreatStatus, "TreatStatusID", "TreatStatusName");
            return View();
        }

        // POST: Bakeries/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        [Authorize(Roles ="Admin")]
        public ActionResult Create([Bind(Include = "BakeryTreatID,TreatName,TreatCategoryID,Cost,Price,UnitsSold,Quantity,TreatStatusID,HasGlutenID,Calories,Description,SeasonID,Ingredients,ImageFileName")] Bakery bakery, HttpPostedFileBase bakeryPic)
        {
            if (ModelState.IsValid)
            {
                #region File Upload
                //use a default image if none is provided
                string imgName = "default.jpg";

                if (bakeryPic != null) //your httpPostedFileBase Object that should be added to the action != null
                {
                    imgName = bakeryPic.FileName;

                    string ext = imgName.Substring(imgName.LastIndexOf('.'));

                    string[] goodExts = { ".jpg", ".jpeg", "gif", ".png" };

                    if (goodExts.Contains(ext.ToLower())) /*&& (bakeryPic.ContentLength <= 4194304)) *///4mb max asp.net
                    {
                        imgName = Guid.NewGuid() + ext;

                        bakeryPic.SaveAs(Server.MapPath("~/Content/img/" + imgName));
              
                    }
                    else
                    {
                        imgName = "default.jpg";
                    }
                }

                bakery.ImageFileName = imgName;

                #endregion

                db.Bakeries.Add(bakery);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.HasGlutenID = new SelectList(db.HasGlutens, "HasGlutenID", "GlutenStatus", bakery.HasGlutenID);
            ViewBag.SeasonID = new SelectList(db.Seasons, "SeasonID", "SeasonName", bakery.SeasonID);
            ViewBag.TreatCategoryID = new SelectList(db.TreatCategories, "TreatCategoryID", "TreatCategoryName", bakery.TreatCategoryID);
            ViewBag.TreatStatusID = new SelectList(db.TreatStatus, "TreatStatusID", "TreatStatusName", bakery.TreatStatusID);
            return View(bakery);
        }

        // GET: Bakeries/Edit/5
        [Authorize(Roles ="Admin")]
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Bakery bakery = db.Bakeries.Find(id);
            if (bakery == null)
            {
                return HttpNotFound();
            }
            ViewBag.HasGlutenID = new SelectList(db.HasGlutens, "HasGlutenID", "GlutenStatus", bakery.HasGlutenID);
            ViewBag.SeasonID = new SelectList(db.Seasons, "SeasonID", "SeasonName", bakery.SeasonID);
            ViewBag.TreatCategoryID = new SelectList(db.TreatCategories, "TreatCategoryID", "TreatCategoryName", bakery.TreatCategoryID);
            ViewBag.TreatStatusID = new SelectList(db.TreatStatus, "TreatStatusID", "TreatStatusName", bakery.TreatStatusID);
            return View(bakery);
        }

        // POST: Bakeries/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        [Authorize(Roles ="Admin")]
        public ActionResult Edit([Bind(Include = "BakeryTreatID,TreatName,TreatCategoryID,Cost,Price,UnitsSold,Quantity,TreatStatusID,HasGlutenID,Calories,Description,SeasonID,Ingredients,ImageFileName")] Bakery bakery, HttpPostedFileBase bakeryPic)
        {
            if (ModelState.IsValid)
            {
                #region File Upload
                string imgName = "default.jpg";
                if (bakeryPic != null)
                {
                    imgName = bakeryPic.FileName;

                    string ext = imgName.Substring(imgName.LastIndexOf('.'));

                    string[] goodExts = { ".jpg", ".jpeg", "gif", ".png" };

                    if (goodExts.Contains(ext.ToLower()) && (bakeryPic.ContentLength <= 4194304))
                    {
                        imgName = Guid.NewGuid() + ext;

                        bakeryPic.SaveAs(Server.MapPath("~/Content/img/" + imgName));
                    }
                    else
                    {
                        imgName = "default.jpg";
                    }
                }

                bakery.ImageFileName = imgName;
                #endregion
                db.Entry(bakery).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.HasGlutenID = new SelectList(db.HasGlutens, "HasGlutenID", "GlutenStatus", bakery.HasGlutenID);
            ViewBag.SeasonID = new SelectList(db.Seasons, "SeasonID", "SeasonName", bakery.SeasonID);
            ViewBag.TreatCategoryID = new SelectList(db.TreatCategories, "TreatCategoryID", "TreatCategoryName", bakery.TreatCategoryID);
            ViewBag.TreatStatusID = new SelectList(db.TreatStatus, "TreatStatusID", "TreatStatusName", bakery.TreatStatusID);
            return View(bakery);
        }

        // GET: Bakeries/Delete/5
        [Authorize(Roles ="Admin")]
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Bakery bakery = db.Bakeries.Find(id);
            if (bakery == null)
            {
                return HttpNotFound();
            }
            return View(bakery);
        }

        // POST: Bakeries/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        [Authorize(Roles ="Admin")]
        public ActionResult DeleteConfirmed(int id)
        {
            Bakery bakery = db.Bakeries.Find(id);

            if (bakery.ImageFileName != null && bakery.ImageFileName != "default.jpg")
            {
                System.IO.File.Delete(Server.MapPath("~/Content/img/" + Session["currentImage"].ToString()));
            }

            db.Bakeries.Remove(bakery);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        [HttpPost]
        public ActionResult AddToCart(int qty, int bakeryTreatId)
        {
            //create the shell of the local shopping cart variable (easier to use than session)
            Dictionary<int, CartItemViewModel> shoppingCart = null;

            //check if the session version of the cart exists. If so, copy it to local cart.
            if (Session["cart"] != null)
            {
                //session cart exist - reassign to overwrite local var
                shoppingCart = (Dictionary<int, CartItemViewModel>)Session["cart"];
                //this is not only explicit casting (larger type's value to a smaller type)
                //unboxing- casting back to its original smaller type
            }
            else
            {
                //no session cart exist - create a 'valueless' version of local cart
                shoppingCart = new Dictionary<int, CartItemViewModel>();
            }

            //get the product being referenced
            Bakery treat = db.Bakeries.Where(x => x.BakeryTreatID == bakeryTreatId).FirstOrDefault();
            if (treat == null)
            {
              
                return RedirectToAction("index");

                // or throw new ApplicationException("Book not found");
            }
            else
            {
                
                //check if that bakeryTreat is in the cart. If so, increment the qty. Else add the new item.

                CartItemViewModel item = new CartItemViewModel(qty, treat);
                if (shoppingCart.ContainsKey(treat.BakeryTreatID))
                {
                    shoppingCart[treat.BakeryTreatID].Qty += qty;
                }
                else
                {
                    shoppingCart.Add(treat.BakeryTreatID, item);
                }

                //add all the items back to our session variable
                Session["cart"] = shoppingCart;
                //this is implicit casting for the dictionary to an object (smaller to larger)

                //set up confirmation message to show after redirect
                Session["confrim"] = string.Format($"{qty} {treat.TreatName} added to your cart.");
            }
            //redirect Bakeries index to do more shopping)
            return RedirectToAction("Index"); // index for more shopping

        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
