using Project_WebBanGiay.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Project_WebBanGiay.Controllers
{
    public class HomeController : Controller
    {
        //
        // GET: /Home/

        qlBan_GiayDataContext db = new qlBan_GiayDataContext();
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult Index1()
        {
            return View();
        }
        public ActionResult DanhMucPartial_TungLoai()
        {
            var listChuDe = db.DanhMucGiays.Take(db.DanhMucGiays.Count()).OrderBy(cd => cd.tenDanhMuc).ToList();
            return View(listChuDe);
        }
    }
}
