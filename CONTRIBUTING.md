# 🤝 Dizdar Linux'a Katkıda Bulunma Rehberi

Öncelikle Dizdar Linux projesine ilgi gösterdiğiniz ve katkıda bulunmak istediğiniz için teşekkür ederiz! Açık kaynak topluluğunun gücüyle büyüyen bu projenin bir parçası olmanızdan mutluluk duyarız.

Bu rehber, projeye nasıl katkı sağlayabileceğinizi açıklar.

---

## 📌 Katkı Alanları

Projeye geliştirici olmasanız dahi pek çok farklı alanda katkı sunabilirsiniz:

1. **🐛 Hata Bildirimi (Bug Reports):**
   * Karşılaştığınız bir sorunu veya beklenmeyen davranışı [GitHub Issues](https://github.com/edizdar/dizdar-linux-builder/issues) üzerinden bize iletebilirsiniz.
   * Lütfen hatayı bildirirken donanım bilgilerinizi (CPU, RAM, Ekran Kartı) ve hatayı tetikleyen adımları ekleyin.

2. **💡 Yeni Özellik ve Fikir Önerileri:**
   * "Şu araç da varsayılan olarak yüklü gelse harika olur" veya "Şu arayüz özelliği eklenebilir" dediğiniz fikirleri yine Issues bölümünden tartışmaya açabilirsiniz.

3. **🎨 Tasarım ve Görsel Katkılar:**
   * Yeni duvar kağıtları (`config/includes.chroot/usr/share/backgrounds/`)
   * Yeni simgeler ve menü tasarımları (`config/includes.chroot/etc/skel/.config/xfce4/`)

4. **💻 Kod ve Yapılandırma Geliştirmeleri:**
   * Paket listeleri iyileştirmeleri (`config/package-lists/`)
   * Donanım sürücüleri ve çekirdek ayarları
   * Bash betikleri ve optimizasyon kancaları (`config/hooks/`)

---

## 🚀 Katkı Süreci (Adım Adım)

1. **Depoyu Fork'layın:**
   GitHub sayfasının sağ üst köşesindeki **Fork** butonuna tıklayarak projenin bir kopyasını kendi hesabınıza alın.

2. **Bilgisayarınıza Klonlayın:**
   ```bash
   git clone https://github.com/<kullanici-adiniz>/dizdar-linux-builder.git
   cd dizdar-linux-builder
   ```

3. **Yeni Bir Çalışma Dalı (Branch) Açın:**
   ```bash
   git checkout -b ozellik/yeni-duvar-kagitlari
   ```

4. **Değişikliklerinizi Yapın ve Test Edin:**
   * Dosyalarınızı düzenleyin.
   * Dosya sonlarının Linux uyumlu (**LF**) olduğundan emin olun.

5. **Commit'leyin ve Push'layın:**
   ```bash
   git add .
   git commit -m "TASARIM: Yeni yüksek çözünürlüklü duvar kağıtları eklendi"
   git push origin ozellik/yeni-duvar-kagitlari
   ```

6. **Pull Request (PR) Açın:**
   GitHub üzerindeki deponuza giderek ana projeye (`edizdar/dizdar-linux-builder:main`) yönelik bir **Pull Request** oluşturun.

---

## 📜 Lisans Kabulü

Projeye yapacağınız tüm katkılar otomatik olarak projenin lisansı olan **GNU General Public License v3.0 (GPL-3.0)** kapsamına dahil edilecektir.
