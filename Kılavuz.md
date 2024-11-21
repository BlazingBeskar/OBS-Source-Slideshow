# OBS Lua Script: Kaynak Geçişli Slayt Gösterisi

Bu OBS Studio scripti, belirtilen bir sahnedeki kaynakları geçiş yaparak bir slayt gösterisi efekti oluşturur. Her kaynak, ayarlanabilir bir süre boyunca görüntülenir ve ardından bir sonraki kaynağın görünmesinden önce kısa bir kapalı süre geçer.

Kredilendirme takdir edilir ancak zorunlu değildir, dilediğiniz gibi kullanabilirsiniz.

---

## Özellikler

- Belirli bir sahnedeki kaynakları otomatik olarak slayt gösterisi gibi geçiş yapar.
- Her kaynak için ayarlanabilir **açık süresi** ve **kapalı süresi**.
- Belirtilen sahneye geçildiğinde otomatik olarak başlar ve sahneden çıkıldığında durur.

---

## Kurulum Talimatları

1. **Script'i İndir**  
   Sağlanan [obsslideshow.lua](./obsslideshow.lua) script dosyasını bilgisayarınıza kaydedin.

2. **Script'i OBS'ye Ekleyin**  
   - OBS Studio'yu açın.  
   - `Araçlar > Scriptler` yolunu izleyin.  
   - Scriptler penceresinde `+` düğmesine tıklayın.  
   - Kaydedilmiş Lua scriptini seçin ve `Aç` düğmesine tıklayın.

3. **Script'i Yapılandırın**  
   Script yüklendikten sonra, Scriptler penceresinde yapılandırılabilir alanlar göreceksiniz:
   - **Sahne Adı**: Geçiş yapılacak kaynakları içeren sahnenin adı.  
   - **Açık Süresi (ms)**: Her bir kaynağın görüneceği süre (milisaniye cinsinden).  
   - **Kapalı Süresi (ms)**: Bir sonraki kaynağın gösterilmesinden önce geçen süre (milisaniye cinsinden).

---

## Kullanım

1. **Sahneyi Hazırlayın**  
   - OBS'de geçiş yapmak istediğiniz birden fazla kaynağı içeren bir sahne oluşturun veya seçin.  
   - Tüm kaynakların sahneye ayrı öğeler olarak eklendiğinden emin olun.

2. **Script'i Yapılandırın**  
   - Script ayarlarına sahne adını girin.  
   - `Açık Süresi` ve `Kapalı Süresi` değerlerini istediğiniz şekilde ayarlayın.

3. **Slayt Gösterisini Başlatın**  
   - OBS'de yapılandırılmış sahneye geçiş yapın.  
   - Script, belirtilen sahnedeki kaynakları otomatik olarak geçiş yapmaya başlayacaktır.

4. **Slayt Gösterisini Durdurun**  
   - Yapılandırılmış sahneden çıktığınızda script otomatik olarak duracaktır.

---

## Notlar

- Script, etkinleştirildiğinde belirtilen sahnedeki kaynakları dinamik olarak algılar. Tüm kaynakların doğru bir şekilde yapılandırıldığından emin olun.  
- **Açık Süresi** ve **Kapalı Süresi**, milisaniye cinsinden belirtilmelidir (örneğin, `5000` ms = 5 saniye).  
- En iyi sonuçlar için, script etkinken kaynakları manuel olarak geçiş yapmaktan kaçının.

---

## Sorun Giderme

- **Sahne kaynakları geçiş yapmıyor:**  
  Sahne adının büyük/küçük harf duyarlılığına dikkat ederek tam olarak eşleştiğinden emin olun.

- **Kaynaklar görünmüyor veya yanlış şekilde gizleniyor:**  
  Sahnedeki kaynakların doğru bir şekilde adlandırıldığını ve yapılandırıldığını kontrol edin.

- **Script başlamıyor:**  
  Scriptin yüklendiğinden ve ayarların Scriptler penceresinde doğru şekilde uygulandığından emin olun.

---

Bu depo aracılığıyla katkıda bulunabilir veya sorun bildirebilirsiniz! İyi yayınlar!
