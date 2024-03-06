using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab02
{
    public partial class DangKyThanhVien : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Thêm các mục cho DropDownList ngày
                for (int i = 1; i <= 31; i++)
                {
                    ddlngay.Items.Add(new ListItem(i.ToString(), i.ToString()));
                }

                // Thêm các mục cho DropDownList tháng
                for (int i = 1; i <= 12; i++)
                {
                    ddlthang.Items.Add(new ListItem(i.ToString(), i.ToString()));
                }

                // Thêm các mục cho DropDownList năm
                for (int i = 1950; i <= 2024; i++)
                {
                    ddlnam.Items.Add(new ListItem(i.ToString(), i.ToString()));
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            string kq = "";
            string gioiTinh = chkphai.Checked ? "Nam" : "Nữ";


            kq += "<li>Khach hang: " + txtKhach.Text + "</li><br>";
            kq += "<li>Ten dang nhap: " + txtTenDN.Text + "</li><br>";
            kq += "<li>Mat khau: " + txtMatkhau.Text + "</li><br>";

            kq += "<li>Ngay sinh: " + ddlngay.SelectedValue + "/" + ddlthang.SelectedValue + "/" + ddlnam.SelectedValue + "</li><br>";
            kq += "<li>Gioi tinh : " + gioiTinh + "</li><br>";
            kq += "<li>Email : " + txtemail.Text + "</li><br>";
            kq += "<li>Dia chi : " + txtdiachi.Text + "</li><br>";
            kq += "<li>Dien thoai : " + txtdienthoai.Text + "</li><br>";



            Lblkq.Text = kq;
        }
    }
}