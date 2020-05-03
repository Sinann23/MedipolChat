<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Odalar.aspx.cs" Inherits="MedipolChat2.Odalar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
   
  <link href="genel.css" rel="stylesheet" />
    <script src="Scripts/jquery-3.3.1.min.js"></script>
    <script src="Scripts/jquery.signalR-2.4.1.min.js"></script>

    <script src="/SignalR/Hubs"></script>

    
    

</head>
<body >
    <form id="form1" method="get" runat="server">
        <div class="AnasayfaGenel">
            
            <div class="Sol">
            <div class="menu">
                <div class="logo"></div>
                <a href="Anasayfa.aspx" class="menuler">Anasayfa</a>
                <a href="#" class="menuler">Arkadaşlarım</a>
                <a href="#" class="menuler">Mesajlarım</a>
                <a href="#" class="menuler">Engellenen Kişiler</a>
                <a href="#" class="menuler">Misyonumuz</a>
              
            </div><br />  
             <div class="odalar">
                <div class="odaAdi"><span class="odaisim">Oda:<asp:Label ID="lblOdaAdi" runat="server" Text=""></asp:Label></span></div>
                <hr class="cizgi" />
                 <asp:TextBox ID="txtUsername" style="display:none" runat="server"></asp:TextBox>
                <div class="Mesajlar"  id="messages" runat="server">
                    

                </div>
                <asp:TextBox ID="txtMessage" runat="server" class="txtMesaj"></asp:TextBox>
               
                    <button type="button"  runat="server"  id="btnSendMessage" class="btnMesaj">Gönder</button>
                
            </div>
                </div>

            <div class="onlineKullanicilarKutu">
              <div class="hesap">
                  <div>
                     <h3>Hoşgeldiniz :<asp:Label ID="LabelAdSoyad" runat="server" Text="Label"></asp:Label></h3>
                  </div>
                 <div>
                   <a href="HesapBilgileri.aspx" class="BilgilerimBtn"><span class="BilgilerimLabel"> Bilgilerim </span></a>
 
                     <a href="Login.aspx" id="btnCikis" style="padding-left:15px;width:100px;height:30px;width:100px;background-color:Highlight;font-size:18px;color:white;padding:13px 10px 8px 23px ;text-decoration:none;border-radius:5px;margin-top:37px;margin-left:15px;float:left;font-weight:bolder" >Çıkış Yap</a>
                     
                 </div>
                 

              </div>


          
            <div class="onlineKullanicilar">
                <div><p class="baslikOrtalama">Çevrimiçi Kullanıcılar</p></div>
                <div><p>Çevrimiçi Arkadaşlarım</p></div>
                <div><p>Gelen Mesajlar</p></div>
                </div>
                </div>


           
       
            
        </div>
    </form>
</body>
</html>
