using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;

namespace BTL
{
    public class Product
    {
        public string Id { get; set; }
        public string Name { get; set; }
        public string PriceNew { get; set; }
        public string PriceOld { get; set; }
        public string Images { get; set; }
        public string Detail { get; set; }
        public int Quantity { get; set; }
        public int SumProduct { get; set; }
    }
}