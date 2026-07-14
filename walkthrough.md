# Dizdar Linux Yapılandırma Raporu & Kılavuzu

**Dizdar Linux** projesi başarıyla tamamlanmış ve ilk kararlı işletim sistemi kalıbımız (ISO) başarıyla derlenmiştir! 

---

## 🚀 Son Başarılı Derleme ve İndirme Linki

Tüm `live-build` altyapı pürüzleri ve grafik aracı uyuşmazlıkları (cpio ve rsvg kütüphaneleri) otomatik yama betikleri ile çözülerek **Run #35** aşamasında tam başarıya ulaşılmıştır.

*   **Derleme Sayfası:** [GitHub Actions Run #35](https://github.com/edizdar/dizdar-linux-builder/actions/runs/29303489380)
*   **İndirme Adımları:** 
    1. Yukarıdaki bağlantıya tıklayarak GitHub sayfasını açın.
    2. Sayfanın en altına (**Artifacts / Eserler**) bölümüne kaydırın.
    3. **`dizdar-linux-iso`** bağlantısına tıklayarak hazır ISO dosyanızı bilgisayarınıza indirin (dosya zip formatındadır, içinden `binary.iso` dosyasını çıkartın).

---

## 🎨 Tasarım ve Görsel Özellikler

1.  **Premium Duvar Kağıdı (Kömür Gri & Kehribar):**
    *   Kullanıcı isteğine özel olarak hazırlanan, siyah/kömür grisi ve kehribar sarısı tonlarında modern, minimalist ve yüksek kaliteli geometrik tasarımlı premium duvar kağıdı sisteme gömüldü.
    *   Bu duvar kağıdı hem kilit ekranında (LightDM) hem de ana masaüstünde varsayılan olarak görüntülenecektir.

2.  **Windows 11 Stili Arayüz ve Görünüm:**
    *   **Panel Düzeni:** Alt tarafta ortalanmış görev çubuğu ve uygulamaları gruplayan modern XFCE paneli.
    *   **Başlat Menüsü:** Whisker Menu entegrasyonu ile hızlı arama destekli ortalanmış başlat menüsü.
    *   **Pencere Düzeni:** Sağ üstte minimize/maximize/kapatma butonları ile Windows 11 stili pencere yönetimi.
    *   **Giriş Ekranı (LightDM):** Giriş kartı ortalanmış, premium duvar kağıdımız ve Win11 temasıyla uyumlu giriş arayüzü.

---

## 🛠️ Sistem Özellikleri & Hafifletme

*   **Debian 12 (Bookworm) Tabanı:** Maksimum kararlılık ve uzun ömürlü destek.
*   **Non-Free Sürücüler:** Geniş donanım uyumluluğu için Intel, AMD, Realtek ve Broadcom sürücüleri varsayılan olarak entegre edildi.
*   **Hafif Masaüstü:** XFCE masaüstü ortamı sayesinde sistem boşta sadece 400-500 MB RAM kullanır, eski bilgisayarlarda bile son derece hızlı çalışır.
*   **Uygulama Mağazası:** Çift tıklama ile paket yükleyici (`gdebi`) ve Flatpak destekli GNOME Yazılım Merkezi kurulmuştur.

---

## 💻 Test ve Çalıştırma Kılavuzu

İndirdiğiniz `binary.iso` dosyasını test etmek için aşağıdaki adımları takip edebilirsiniz:

### Sanal Makinede Test Etme (VirtualBox ile)
1.  [VirtualBox](https://www.virtualbox.org/) programını indirin ve kurun.
2.  **Yeni** butonuna tıklayarak sanal makine oluşturun:
    *   **Tür:** Linux
    *   **Sürüm:** Debian (64-bit)
    *   **RAM:** En az 2 GB (4 GB önerilir)
    *   **İşlemci:** 2 Çekirdek
3.  Oluşturduğunuz makinenin ayarlarına girip **Depolama** sekmesindeki Boş CD sürücüsüne indirdiğiniz `binary.iso` dosyasını seçin.
4.  Makineyi başlatın. Karşınıza **Dizdar Linux Canlı Masaüstü** gelecektir. 
5.  Masaüstündeki **Install Debian** (Calamares) kısayoluna çift tıklayarak sistemi sanal diske kurup kurulu halini de test edebilirsiniz.
