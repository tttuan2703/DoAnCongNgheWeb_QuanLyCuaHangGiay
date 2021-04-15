using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Project_WebBanGiay.Models;

namespace Project_WebBanGiay.Controllers
{
    public class TimKiemController : Controller
    {
        //
        // GET: /TimKiem/

        qlBan_GiayDataContext db = new qlBan_GiayDataContext();
        [HttpPost]
        public ActionResult KQTimKiem(FormCollection f)
        {
            string tukhoa = f["txtTimKiem"].ToString();
            ViewBag.tukhoa = tukhoa;
            List<Giay> lstKQ = db.Giays.Where(g => g.tenGiay.Contains(tukhoa)).ToList();

            // phân trang

            if (lstKQ.Count == 0)
            {

                ViewBag.tb = "Không có sản phẩm này";

            }
            ViewBag.tb = "Đã tìm thấy--" + lstKQ.Count + "--Kết quả";
            return View(lstKQ);




        }
    }
}
