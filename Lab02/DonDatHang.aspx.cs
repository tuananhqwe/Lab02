using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab02
{
    public partial class DonDatHang : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //code khoi tao du lieu cho cac dieu khien
            if (!Page.IsPostBack)
            {
                //khoi tao cho ddltrinhdo
                ddlbanh.Items.Add(new ListItem("trung cấp"));
                ddlbanh.Items.Add(new ListItem("trung cấp"));
                //...      
            }

        }

        protected void btchuyen_Click(object sender, EventArgs e)
        {
            bool checkExist = false;
            char[] delim = { '(', ')' };
            int soluong;
            for(int i=0; i< lstbanh.Items.Count; i++)
            {
                string itemText = lstbanh.Items[i].Text;
                if (itemText.Contains(ddlbanh.SelectedItem.Text))
                {
                    string[] arr = itemText.Split(delim);
                    soluong = int.Parse(txtsoluong.Text) + int.Parse(arr[1]);
                    lstbanh.Items[i].Text = $"{ddlbanh.SelectedItem.Text} ({soluong})";
                    checkExist = true;
                    break;
                }
            }
            if (!checkExist)
            {
                string data = $"{ddlbanh.SelectedItem.Text} ({txtsoluong.Text})";

                lstbanh.Items.Add(data);
            }
          
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            for (int i = lstbanh.Items.Count - 1; i >= 0; i--)
            {
                if (lstbanh.Items[i].Selected)
                {
                    lstbanh.Items.RemoveAt(i);
                }
            }
        }

        protected void btnIn_Click(object sender, EventArgs e)
        {
            string kq = "";

            kq += "<h2 class='text-center'>HOA DON DAT HANG </h2>";
            kq += "<div class='border border-primary'>";
            kq += "Khach hang: <i>" + txtKhachhang.Text + "</i><br>";
            kq += "Dia chi: <i>" + txtDiaChi.Text + "</i><br>";
            kq += "Ma so thue: <i>" + txtThue.Text + "</i><br><br>";

            kq += "<b> Dat cac loai banh sau: </b>";
            kq += "<table class='table table-bordered'>";
            char[] delim = { '(', ')' };
            foreach (ListItem item in lstbanh.Items)
            {
                string[] arr = item.Text.Split(delim);
                kq += "<tr>";
                kq += $"<td> {arr[0]} </td> <td> {arr[1]} </td>";
                kq += "</tr>";
            }
            kq += "</table>";
            kq += "</div>";



            Lbketquaq.Text = kq;
        }
    }
}
