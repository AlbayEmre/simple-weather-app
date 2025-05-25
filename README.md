# 🌤️ Simple Weather App (BLoC)

**Simple Weather App**, Flutter ile geliştirilen ve BLoC mimarisiyle yapılandırılmış bir hava durumu uygulamasıdır. Kullanıcının konumunu algılar, gerçek zamanlı hava durumu bilgilerini çeker ve basit ama işlevsel bir arayüzle sunar. Temiz kod, sade mimari ve responsive tasarım anlayışıyla hazırlanmıştır.

---

## 🧪 Özellikler

- 📍 **Konum algılama** (geolocator)
- 🌦️ **Gerçek hava durumu bilgisi** (weather API)
- 🧠 **BLoC mimarisi** ile state management
- 🌐 **Şehir ismi veya konuma göre veri çekme**
- 📅 Güncel tarih ve saat bilgisi (intl)
- 🎯 Responsive tasarım ve sade kullanıcı arayüzü

---

## 🔧 Kullanılan Teknolojiler

| Paket              | Açıklama                                |
|--------------------|------------------------------------------|
| **flutter_bloc**   | BLoC yapısı için                        |
| **equatable**      | State karşılaştırma işlemleri için      |
| **geolocator**     | Cihazın konum bilgisi için              |
| **weather**        | Hava durumu verisini çekmek için        |
| **intl**           | Tarih, saat ve lokal formatlama için    |

---

## 🚀 Kurulum

```bash
# 1. Projeyi klonla
git clone https://github.com/AlbayEmre/simple-weather-app.git
cd simple-weather-app

# 2. Gerekli paketleri yükle
flutter pub get

# 3. Uygulamayı başlat
flutter run
