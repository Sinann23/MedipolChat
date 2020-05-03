using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MedipolChat2
{
    public partial class OdaGenel : System.Web.UI.Page
    {
        public static string mesaj = "";
        protected void Page_Load(object sender, EventArgs e)
        {
      
            if (!Page.IsPostBack)
            {
                if (Session["KAd"] == null)
                {

                    Response.Redirect("Login.aspx");
                    
                }
                else
                {

                    IsLogin.Login = true;
                    DbOperation db = new DbOperation();


                    DataTable Sonuc = db.HesapBilgileriGetir("select Adi+Soyadi as AdSoyad,KAdi,Sifre,Eposta from tbl_kullanici where KAdi='" + Session["KAd"].ToString() + "'");
                    LabelAdSoyad.Text = Sonuc.Rows[0]["AdSoyad"].ToString();
                    txtUsername.Text = Session["KAd"].ToString();

                    //  DataTable Mesajlar= db.OdaMesajGetir("select * from tbl_OdaMesajlar");

                    // messages.InnerHtml+= Mesajlar.Rows[0]["Mesaj"].ToString()+"<br/>";
                    this.txtMessage.Attributes.Add(
                        "onkeypress", "button_click(this,'" + this.btnSendMessage.ClientID + "')");

                    DataTable mesajSonuc= db.OdaMesajGetir("select * from tbl_OdaMesajlar");
                    for (int i = 0; i < mesajSonuc.Rows.Count; i++)
                    {

                        if (Session["KAd"].ToString() == mesajSonuc.Rows[i]["KAdi"].ToString())
                        {
                            messages.InnerHtml += "<li style=font-size:20px;float:right>" + "<span style=font-weight:bolder>" + mesajSonuc.Rows[i]["KAdi"].ToString() + "</span>:" + mesajSonuc.Rows[i]["Mesaj"].ToString() + "</li></br></br>";
                        }
                        else { 
                        messages.InnerHtml += "<li style=font-size:20px;float:left>" + "<span style=font-weight:bolder>"+mesajSonuc.Rows[i]["KAdi"].ToString() + "</span>:" + mesajSonuc.Rows[i]["Mesaj"].ToString() + "</li></br></br>";
                        }


                    }



                }
            }
        }

        protected void btnCikis_Click(object sender, EventArgs e)
        {
            Session.Remove("KAd");
            Response.Redirect("Login.aspx");

        }

        protected void btnSendMessage_Click(object sender, EventArgs e)
        {
           // DbOperation db = new DbOperation();
         //   db.odaMesajEkle("insert into tbl_OdaMesajlar values(1,'"+ mesaj + "','" +txtUsername.Text+"',GETDATE())");
            Session.Add("KAd", txtUsername.Text);
        }
    }
}