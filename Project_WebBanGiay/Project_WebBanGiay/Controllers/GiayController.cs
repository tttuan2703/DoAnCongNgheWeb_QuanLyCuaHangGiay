using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Project_WebBanGiay.Models;
namespace Project_WebBanGiay.Controllers
{
    public class GiayController : Controller
    {
        //
        // GET: /Giay/
        qlBan_GiayDataContext db = new qlBan_GiayDataContext();
        public ActionResult GiayPartial()
        {
            var ListGiay = db.Giays.OrderBy(giay => giay.maDanhMuc).ToList();
            return View(ListGiay);
        }

        public ActionResult GiayPartial_TheoDM(int maDM)
        {
            var ListGiay = db.Giays.Where(giay => giay.maDanhMuc==maDM).Take(3).ToList();
            return View(ListGiay);
        }
       
        public ActionResult XemChiTiet(int maG)
        {
            Giay giay = db.Giays.Single(s => s.maGiay == maG);
            if (giay == null)
            {
                return HttpNotFound();
            }
            return View(giay);
        }
        public ActionResult DanhMucPartial_TungLoai()
        {
            var listChuDe = db.DanhMucGiays.Take(db.DanhMucGiays.Count()).OrderBy(cd => cd.tenDanhMuc).ToList();
            return View(listChuDe);
        }
    }
}
