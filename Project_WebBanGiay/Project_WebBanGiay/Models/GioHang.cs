using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Project_WebBanGiay.Models;
namespace Project_WebBanGiay.Models
{
    public class GioHang
    {
        qlBan_GiayDataContext db = new qlBan_GiayDataContext();
        public int imaGiay {get; set; }
        public string tTengiay { get; set; }
        public string ihinh { get; set; }
        public double dDongia { get; set; }
        public int soluong { get; set; }
        public double ThanhTien
        {
            get { return soluong * dDongia; }
        }
        // khoi tao gio hang
        public GioHang(int maGiay)
        {
            imaGiay = maGiay;
            Giay g = db.Giays.Single(giay => giay.maGiay == imaGiay);
            tTengiay = g.tenGiay;
            ihinh = g.hinh;
            dDongia = double.Parse(g.DonGia.ToString());
            soluong = 1;

        }

    }
}