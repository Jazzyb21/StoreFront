using StoreFront.Data.EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace StoreFront.UI.MVC.Models
{
	public class CartItemViewModel
	{
        public int Qty { get; set; }
        public Bakery BakedGood { get; set; }


        public CartItemViewModel(int qty, Bakery bakedGood)
        {
            Qty = qty;
            BakedGood = bakedGood;
        }
    }
}