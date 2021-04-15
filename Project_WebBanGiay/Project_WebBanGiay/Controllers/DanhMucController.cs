using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Project_WebBanGiay.Models;

namespace Project_WebBanGiay.Controllers
{
    public class DanhMucController : Controller
    {
        //
        // GET: /DanhMuc/
        qlBan_GiayDataContext db = new qlBan_GiayDataContext();
        public ActionResult DanhMucPartial()
        {
            var listChuDe = db.DanhMucGiays.Take(db.DanhMucGiays.Count()).OrderBy(cd => cd.tenDanhMuc).ToList();
            return View(listChuDe);
        }
        public ActionResult DanhMucPartial_TungLoai()
        {
            var listChuDe = db.DanhMucGiays.Take(db.DanhMucGiays.Count()).OrderBy(cd => cd.tenDanhMuc).ToList();
            return View(listChuDe);
        }
        public ActionResult DanhMucTheoTen(int maDanhMuc)
        {
            var ListGiay = db.Giays.Where(s => s.maDanhMuc == maDanhMuc).OrderBy(s => s.DonGia).ToList();
            if (ListGiay == null)
                return HttpNotFound();
            ViewBag.TenDM = db.DanhMucGiays.FirstOrDefault(dm=>dm.maDanhMuc==ListGiay.First().maDanhMuc).tenDanhMuc;
            return View(ListGiay);      
        }
        public ActionResult ac() {
            return RedirectToAction("ttNguoiDung", "NguoiDung");        
        }
        public ActionResult jj()
        {
            return View();
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
    }
}
