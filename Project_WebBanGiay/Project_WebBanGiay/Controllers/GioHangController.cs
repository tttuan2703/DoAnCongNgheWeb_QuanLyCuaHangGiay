using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Project_WebBanGiay.Models;
namespace Project_WebBanGiay.Controllers
{
    public class GioHangController : Controller
    {
        //
        // GET: /GioHang/
        qlBan_GiayDataContext db = new qlBan_GiayDataContext();
        public ActionResult Index()
        {
            return View();
        }
        // lay gio hang 
        public List<GioHang> LayGioHang()
        {
            List<GioHang> lstGioHang = Session["GioHang"] as List<GioHang>;
            if (lstGioHang == null)
            {
                // neu lstgiohang chua ton tai  thi khoi tao 
                lstGioHang = new List<GioHang>();
                Session["GioHang"] = lstGioHang;
            }
            return lstGioHang;
        }
        public ActionResult ThemGioHang(int mg, string strURL)
        {
            // lay gio hhang 
            List<GioHang> lstGioHang = LayGioHang();
            // kiem tra sach co ton tai hay chua :
            GioHang SanPham = lstGioHang.Find(sp => sp.imaGiay == mg);
            if (SanPham == null) // chua co hang trong gio
            {
                SanPham = new GioHang(mg);
                lstGioHang.Add(SanPham);
                return Redirect(strURL);
            }
            else
            {
                SanPham.soluong++;
                return Redirect(strURL);
            }
        }
        // tong so luong hang trong gio 
        private int TongSoLuong()
        {
            int tsl = 0;
            List<GioHang> lstGioHang = Session["GioHang"] as List<GioHang>;
            if (lstGioHang != null)
            {
                tsl = lstGioHang.Sum(sp => sp.soluong);

            }
            return tsl;
        }
        // tong thanh tien 
        private double TongThanhTien()
        {
            double ttt = 0;
            List<GioHang> lstGioHang = Session["GioHang"] as List<GioHang>;
            if (lstGioHang != null)
            {
                ttt += lstGioHang.Sum(sp => sp.ThanhTien);

            }
            return ttt;

        }
        // trang gio hang 

        public ActionResult GioHang()
        {
            if (Session["GioHang"] == null)
            {
                return RedirectToAction("Index1", "Home");
            }
            List<GioHang> lstGioHang = LayGioHang();
            ViewBag.TongSoLuong = TongSoLuong();
            ViewBag.TongThanhTien = TongThanhTien();
            return View(lstGioHang);
        }
        public ActionResult GioHangPartial()
        {
            ViewBag.ToSoLuong = TongSoLuong();
            ViewBag.TongThanhTien = TongThanhTien();
            return PartialView();
        }

        // xoa gio hang 
        public ActionResult XoaGioHang(int MaSP)
        {
            // lay gio han g
            List<GioHang> lstGioHang = LayGioHang();
            // kt gio hang ronng
            GioHang sp = lstGioHang.Single(s => s.imaGiay == MaSP);
            // co thi xoa
            if (sp != null)
            {
                lstGioHang.RemoveAll(s => s.imaGiay == MaSP);
                return RedirectToAction("GioHang", "GioHang");
            }
            if (lstGioHang.Count == 0)
            {
                return RedirectToAction("Index1", "Home");
            }
            return RedirectToAction("GioHang", "GioHang");
        }
        // xoa all gio hang 
        public ActionResult XoaGioHang_all()
        {
            List<GioHang> lstGioHang = LayGioHang();
            // kt gio hang ronng
            lstGioHang.Clear();
            return RedirectToAction("Index1", "Home");
        }
        // update gio hang 

        public ActionResult CapNhatGioHang(int MaSP, FormCollection f)
        {
            // lay gio  hang 
            List<GioHang> lstGioHang = LayGioHang();
            // kt gio hang ronng
            GioHang sp = lstGioHang.Single(s => s.imaGiay == MaSP);
            if (sp != null)
            {
                sp.soluong = int.Parse(f["txtSoLuong"].ToString());

            }
            return RedirectToAction("GioHang", "GioHang");

        }

        // đặt hàng
        [HttpGet]
        public ActionResult DatHang()
        {
            //Kiem tra
            if (Session["TaiKhoan"] == null || Session["TaiKhoan"].ToString() == "")
            {
                return RedirectToAction("DangNhap", "NguoiDung");
            }
            if (Session["GioHang"] == null)
            {
                return RedirectToAction("DanhMucPartial_TungLoai", "DanhMuc");
            }
            //
            List<GioHang> lstGH = LayGioHang();
            ViewBag.ToSoLuong = TongSoLuong();
            ViewBag.TongThanhTien = TongThanhTien();
            return View(lstGH);
        }
        [HttpPost]
        public ActionResult DatHang(FormCollection f)
        {
            HoaDon ddh = new HoaDon();
            ThongTinTaiKhoan kh = (ThongTinTaiKhoan)Session["TaiKhoan"];
            List<GioHang> gh = LayGioHang();
            ddh.tenTaiKhoan = kh.tenTaiKhoan;
            ddh.ngayBan = DateTime.Now;
            //var NgayGiao = String.Format("{0:dd/mm/yyyy}", f["NgayGiao"]);
            //ddh.NgayGiao = DateTime.Parse(NgayGiao);
            //ddh.DaThanhToan = "Chưa thanh toán";
            //ddh.TinhTrangGiaoHang = 0;
            db.HoaDons.InsertOnSubmit(ddh);
            db.SubmitChanges();
            //
            foreach (var item in gh)
            {
                ChiTietHoaDon ctdh = new ChiTietHoaDon();
                ctdh.MaHoaDon = ddh.maHoaDon;
                ctdh.maGiay = item.imaGiay;
                ctdh.slMua = item.soluong;
                ctdh.thanhTien = item.dDongia * item.soluong;
                db.ChiTietHoaDons.InsertOnSubmit(ctdh);
            }
            db.SubmitChanges();
            Session["GioHang"] = null;
            return RedirectToAction("XacNhanDonHang", "GioHang");
        }
        public ActionResult XacNhanDonHang()
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
