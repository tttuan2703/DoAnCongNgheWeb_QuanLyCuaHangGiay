using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Project_WebBanGiay.Models;

namespace Project_WebBanGiay.Controllers
{
    public class NguoiDungController : Controller
    {
        //
        // GET: /NguoiDung/
        qlBan_GiayDataContext db = new qlBan_GiayDataContext();
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult DanhMucPartial_TungLoai()
        {
            var listChuDe = db.DanhMucGiays.Take(db.DanhMucGiays.Count()).OrderBy(cd => cd.tenDanhMuc).ToList();
            return View(listChuDe);
        }
        [HttpGet]
        public ActionResult DangKy()
        {
            return View();
        }
        [HttpPost]
        public ActionResult DangKy(ThongTinTaiKhoan tk, FormCollection f)
        {
            var hoten = f["ten"];
            var tendn = f["tenTaiKhoan"];
            var matkhau = f["matKhau"];
            var rematkhau = f["ReMatKhau"];
            var dienthoai = f["SDT"];
            var ngaysinh = String.Format("{0:MM/DD/YYYY}", f["NgaySinh"]);
            var email = f["Email"];
            var gt = f["gioiTinh"];
            var diachi = f["DiaChi"];
            if (String.IsNullOrEmpty(hoten))
            {
                ViewBag.LoiHoTen = "Họ tên không được bỏ trống";
            }
            if (String.IsNullOrEmpty(tendn))
            {
                ViewBag.LoiTenDN = "Tên khách hàng không được bỏ trống";
            }
            if (String.IsNullOrEmpty(matkhau))
            {
                ViewBag.LoiMatKhau = "Mật khẩu không được bỏ trống";
            }
           
            if (String.IsNullOrEmpty(dienthoai))
            {
                ViewBag.LoiDienThoai = "Điện thoại không được bỏ trống";
            }
            if (String.IsNullOrEmpty(ngaysinh))
            {
                ViewBag.LoiNgaySinh = "Ngày sinh không được bỏ trống";
            }
            if (String.IsNullOrEmpty(email))
            {
                ViewBag.LoiEmail = "Email không được bỏ trống";
            }
            if (String.IsNullOrEmpty(diachi))
            {
                ViewBag.LoiDiaChi = "Địa chỉ không được bỏ trống";
            }
            if (!String.IsNullOrEmpty(hoten) && !String.IsNullOrEmpty(ngaysinh) && !String.IsNullOrEmpty(tendn) && !String.IsNullOrEmpty(email) && !String.IsNullOrEmpty(matkhau) && !String.IsNullOrEmpty(rematkhau) && !String.IsNullOrEmpty(dienthoai) && !String.IsNullOrEmpty(diachi))
            {
                tk.hoTen = hoten;
                tk.tenTaiKhoan = tendn;
                tk.matKhau = matkhau;
                tk.ngaySinh = DateTime.Parse(ngaysinh);
                tk.diaChi = diachi;
                tk.Email = email;
                tk.SDT = dienthoai;
                db.ThongTinTaiKhoans.InsertOnSubmit(tk);
                db.SubmitChanges();
                return RedirectToAction("DangNhap","NguoiDung");
               
               
                //kh.DiaChi = diachi;
                //kh.Email = email;
                ////Ghi xuong csdl
                //db.KhachHangs.InsertOnSubmit(kh);
                //db.SubmitChanges();
                //return RedirectToAction("DangNhap", "NguoiDung");
            }
            return View();
        }

        // đăng nhập
        [HttpGet]
        public ActionResult DangNhap()
        {
            return View();
        }
        public ActionResult DangNhap(FormCollection f)
        {
            var tendn = f["tenTaiKhoan"];
            var matkhau = f["matKhau"];
            if (String.IsNullOrEmpty(tendn))
            {
                ViewBag.Loi1 = "Tên đăng nhập không được bỏ trống";
            }
            if (String.IsNullOrEmpty(matkhau))
            {
                ViewBag.Loi2 = "Mật khẩu không được bỏ trống";
            }
            if (!String.IsNullOrEmpty(tendn) && !String.IsNullOrEmpty(matkhau))
            {
                var sc = db.ThongTinTaiKhoans.FirstOrDefault(khach => khach.tenTaiKhoan == tendn && khach.matKhau == matkhau);
                if (sc == null)
                {
                    ViewBag.LoiKH = "Tên đăng nhập hoặc mật khẩu của khách hàng không đúng. Vui lòng kiểm tra lại!";
                }
                else
                {
                    Session["TaiKhoan"] = sc;
                    return RedirectToAction("DanhMucPartial_TungLoai", "DanhMuc");
                }
            }
            return View();
        }
        public ActionResult ttNguoiDung()
        {
            ThongTinTaiKhoan lstND = Session["TaiKhoan"] as ThongTinTaiKhoan;
            if (lstND == null)
            {
                // neu lstgiohang chua ton tai  thi khoi tao 
                lstND = new ThongTinTaiKhoan();
                Session["TaiKhoan"] = lstND;
                return RedirectToAction("DangNhap", "NguoiDung");
            }
            else {
                return View(lstND);
            }
        }
        public ActionResult jj() {
            return View();
        }
        //public ActionResult UpdateTaiKhoan(ThongTinTaiKhoan tt)
        //{
        //    if (ModelState.IsValid)
        //    {
        //        db.ThongTinTaiKhoans.Attach(tt);
        //        db.Entry(tt).State = System.Data.EntityState.Modified;
        //        db.SaveChanges();
        //        return RedirectToAction("ShowEmployee", "Home");
        //    }
        //    return View();
        //}
    }
}
