-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 18 Haz 2016, 00:19:26
-- Sunucu sürümü: 5.6.17
-- PHP Sürümü: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Veritabanı: `anasinifim`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `password` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `name` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci AUTO_INCREMENT=2 ;

--
-- Tablo döküm verisi `admin`
--

INSERT INTO `admin` (`ID`, `username`, `password`, `name`, `email`) VALUES
(1, 'vildan', '827ccb0eea8a706c4c34a16891f84e7b', 'vildan evren', 'vildann.evrenn90@outlook.com');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `cizelge`
--

CREATE TABLE IF NOT EXISTS `cizelge` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `baSaati` time NOT NULL,
  `biSaati` time NOT NULL,
  `icerik` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `dersler`
--

CREATE TABLE IF NOT EXISTS `dersler` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DersAdi` varchar(20) COLLATE utf8_turkish_ci NOT NULL,
  `DersIcerigi` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `DersSaati` time NOT NULL,
  `DersGunu` varchar(20) COLLATE utf8_turkish_ci NOT NULL,
  `DersTarihi` date NOT NULL,
  `DersHocasi` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci AUTO_INCREMENT=20 ;

--
-- Tablo döküm verisi `dersler`
--

INSERT INTO `dersler` (`ID`, `DersAdi`, `DersIcerigi`, `DersSaati`, `DersGunu`, `DersTarihi`, `DersHocasi`) VALUES
(1, 'Ingilizce', 'ingilizce eğitimi', '13:30:00', 'Pazartesi', '0000-00-00', 'Berna FİDAN'),
(2, 'Türkçe', 'okuma ve güzel konuşma', '15:15:00', 'Pazartesi', '0000-00-00', 'Deniz ŞEKER'),
(3, 'Santranç', 'zeka geliştirme', '16:30:00', 'Pazartesi', '0000-00-00', 'Deniz ŞEKER'),
(4, 'Müzik', 'şarkı Söyleme', '17:15:00', 'Pazartesi', '0000-00-00', 'Selda Dönmez'),
(5, 'ingilizce', 'ingilizce eğitimi', '14:00:00', 'sali', '0000-00-00', 'Berna FİDAN'),
(6, 'Matematik', 'Matematik eğitimi', '15:00:00', 'sali', '0000-00-00', 'Berna FİDAN'),
(7, 'Türkçe', 'okuma ve güzel konuşma', '16:00:00', 'sali', '0000-00-00', 'Deniz ŞEKER'),
(8, 'Resim', 'Resim Yapma', '17:00:00', 'sali', '0000-00-00', 'Selda Dönmez'),
(9, 'Resim', 'Resim Yapma', '17:00:00', 'sali', '0000-00-00', 'Selda Dönmez'),
(10, 'Müzik', 'şarkı Söyleme', '14:00:00', 'çarşamba', '0000-00-00', 'Selda Dönmez'),
(11, 'Santranç', 'zeka geliştirme', '15:00:00', 'çarşamba', '0000-00-00', 'Deniz ŞEKER'),
(12, 'Beden', 'oyun oynama', '16:00:00', 'çarşamba', '0000-00-00', 'Berna FİDAN'),
(13, 'El İşi', 'Hayal dünyasını geliştirme', '17:00:00', 'çarşamba', '0000-00-00', 'Berna FİDAN'),
(14, 'Türkçe', 'okuma ve güzel konuşma', '15:00:00', 'Perşembe', '0000-00-00', 'Deniz ŞEKER'),
(15, 'Resim', 'Hayal dünyasını gelistirme', '16:00:00', 'Perşembe', '0000-00-00', 'Berna FİDAN'),
(16, 'Santranç', 'zeka geliştirme', '17:00:00', 'Perşembe', '0000-00-00', 'Deniz ŞEKER'),
(17, 'Beden', 'Spor', '18:00:00', 'Perşembe', '0000-00-00', 'Berna FİDAN'),
(18, 'Resim', 'Hayal dünyasını geliştirme', '15:00:00', 'Cuma', '0000-00-00', 'Selda Dönmez'),
(19, 'satranç', 'zeka gelistirme', '16:00:00', 'Cuma', '0000-00-00', 'Deniz ŞEKER');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `duyurular`
--

CREATE TABLE IF NOT EXISTS `duyurular` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `baslik` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `icerik` varchar(500) COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci AUTO_INCREMENT=7 ;

--
-- Tablo döküm verisi `duyurular`
--

INSERT INTO `duyurular` (`ID`, `baslik`, `icerik`) VALUES
(1, 'EĞİTİM ÖĞRETİM DESTEĞİ BAŞVURULARI...', 'Sayın veli,10 Ağustos-02 Eylül 2015 tarihleri arasında Devlet desteğinden faydalanmak isteyen veliler için kayıtlar başlayacaktır.'),
(2, 'YENİ DÖNEM KAYITLARIMIZ BAŞLAMIŞTIR...', 'Halen devam etmekte olan öğrencilerimiz için yeni dönem kayıtlarımız başlamıştır.Sizleri görüşmek üzere okulumuza davet ediyoruz.'),
(3, 'YENİ DÖNEMİMİZ HAYIRLI OLSUN:)', 'Yeni eğitim ve öğretim dönemimiz tüm çocuklarımıza,öğretmenlerimize ve velilerimize hayırlı olsun...'),
(4, 'MİNİKLER SINIFI TOPLANTISI', 'Sayın veli, 05.09.2016 tarihinde minikler sınıfımızın öğrencilerinin veli toplantı vardır. saat 13:00 da başlayacaktır.'),
(5, 'ÇALIŞKAN ÇINARLAR SINIFI TOPLANTISI', 'Sayın veli, 06.09.2016 tarihinde minikler sınıfımızın öğrencilerinin veli toplantı vardır. saat 13:00 da başlayacaktır.'),
(6, 'SEVİMLİ ÇAMLAR SINIFI TOPLANTISI', 'Sayın veli, 07.09.2016 tarihinde minikler sınıfımızın öğrencilerinin veli toplantı vardır. saat 13:00 da başlayacaktır.');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `hakkimizda_tr`
--

CREATE TABLE IF NOT EXISTS `hakkimizda_tr` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Title` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `Url` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `Keywords` text COLLATE utf8_turkish_ci NOT NULL,
  `Description` text COLLATE utf8_turkish_ci NOT NULL,
  `Text` text COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci AUTO_INCREMENT=2 ;

--
-- Tablo döküm verisi `hakkimizda_tr`
--

INSERT INTO `hakkimizda_tr` (`ID`, `Title`, `Url`, `Keywords`, `Description`, `Text`) VALUES
(1, 'Hakkımızda', 'hakkimizda', 'hak', 'hakkımızda', 'Sınıflarımız 50m² olup acil kapıları direkt bahçeye çıkmaktadır.\nSınıflar tabandan tavana cam olup, doğayla içiçe aydınlık ve ferahtır.\nYaz ve kış mevsimine uygun klima sistemimiz mevcuttur.\n24 saat süreyle uzman güvenlik görevlileri tarafından korunmakta ve kamera sistemiyle tüm okul izlenmektedir.\nOkul binası tek katlı olup felaket (yangın vb.) önlemleri alınmıştır.\nOkul mimarisi Avrupa ödüllü bir binadır.');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kadro`
--

CREATE TABLE IF NOT EXISTS `kadro` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Ad` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `Soyad` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `Unvani` varchar(20) COLLATE utf8_turkish_ci NOT NULL,
  `Hakkinda` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci AUTO_INCREMENT=7 ;

--
-- Tablo döküm verisi `kadro`
--

INSERT INTO `kadro` (`ID`, `Ad`, `Soyad`, `Unvani`, `Hakkinda`) VALUES
(1, 'Berna', 'Fidan', 'ingilizce Öğretmeni', '04.10.1982 Erzincan doğumludur.Mesleki kıdemi 10 yıldır 2006 yılından beri okulumuzda.'),
(2, 'Deniz', 'Şeker', 'Okul Öncesi Öğretmen', '09/06/1980 Kayseri doğumludur.Mesleki kıdemi 12 yldır 2005 yılından beri okulumuzda.'),
(3, 'Yusuf', 'Alkış', 'Okul Müdürü', '10.02.1964 Kayseri doğumludur.mesleki kıdemi 33 yıldır 2010 yılından beri okulumuzda.'),
(4, 'Sema', 'Bal', 'Hizmetli', '17.03.1967 Eskişehir doğumludur. Personelimizin mesleki kıdemi 8 yıldır.'),
(5, 'Selda', 'Dönmez', 'Okul Öncesi Öğretmen', '19.10.1983 Kütahya doğumludur.Mesleki kıdemi 8 yıldır.'),
(6, 'Seher', 'Dinç', 'Aşcı', '15.07.1968 Ankara doğumludur..Mesleki kıdemi 6 yıldır.');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ogrenciler`
--

CREATE TABLE IF NOT EXISTS `ogrenciler` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ogrTC` varchar(20) COLLATE utf8_turkish_ci NOT NULL,
  `ogrAdi` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ogrSoyadi` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ogrDogumTarihi` date NOT NULL,
  `ogrCinsiyeti` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `Adres` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `il` varchar(25) COLLATE utf8_turkish_ci NOT NULL,
  `ilce` varchar(25) COLLATE utf8_turkish_ci NOT NULL,
  `Tel1` varchar(20) COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci AUTO_INCREMENT=32 ;

--
-- Tablo döküm verisi `ogrenciler`
--

INSERT INTO `ogrenciler` (`ID`, `ogrTC`, `ogrAdi`, `ogrSoyadi`, `ogrDogumTarihi`, `ogrCinsiyeti`, `Adres`, `il`, `ilce`, `Tel1`) VALUES
(1, '62251031855', 'Eda', 'Demir', '2000-12-20', 'bayan', 'Nurtepe Mahallesi Mesken Sokak No 10 Kat 3', 'Kagithane', 'Kagithane', '0531 422 12 10'),
(2, '68875942324', 'Fatma', 'Yıldız', '2006-10-11', 'Bayan', 'Yazir mahallesi ari sokak no12 kat3', 'Istanbul', 'Kagithane', '0254 547 98 35'),
(3, '68974521478', 'Emre', 'Kaya', '2006-10-12', 'Bay', 'Nurtepe mahallesi ari sokak no9 kat3', 'Kagithane', 'Sisli', '0254 547 98 35'),
(4, '65545878952', 'Demet', 'Deniz', '2006-12-01', 'Bayan', 'Kiraz Mahallesi Mesken Sokak No 10 Kat 5', 'Istanbul', 'Seyrantepe', '0564 789 45 62'),
(5, '65545878952', 'Kazım', 'Kaya', '2006-02-02', 'Bay', 'Cikmaz sokak yazir mahallesi no3 daire 2', 'Istanbul', 'Kagithane', '0531 422 52 10'),
(6, '45615878952', 'Tuğçe', 'Gençtürk', '2007-01-12', 'Bayan', 'Keykubat mahallesi bosna sokak no2 kat3', 'Istanbul', 'Sisli', '0534 124 45 52'),
(7, '65587984521', 'Zeynep', 'Ece', '2006-01-10', 'Bayan', 'Kiraz Mahallesi Mesken Sokak No 10 Kat 5', 'Istanbul', 'Kagithane', '0534 124 45 50'),
(8, '45615878952', 'Ayşe', 'Gök', '2007-11-10', 'Bayan', 'Keykubat mahallesi bosna sokak no2 kat3', 'Istanbul', 'Kagithane', '0534 124 04 25'),
(9, '24567845795', 'Ege', 'Kerem', '2005-02-10', 'Bay', 'Cikmaz sokak yazir mahallesi no3 daire 1', 'Istanbul', 'Kagithane', '0531 422 12 13'),
(10, '45615878957', 'Selda', 'Bilgin', '2005-11-10', 'Bayan', 'Nurtepe Mahallesi Mesken Sokak No 10 Kat5', 'Istanbul', 'Sisli', '0531 422 52 12'),
(11, '45578945120', 'Görkem', 'Evren', '2006-02-10', 'Bay', 'Cikmaz sokak yazir mahallesi no3 daire 9', 'Istanbul', 'Sisli', '05678957542'),
(12, '65587984521', 'Zeynep', 'Demir', '2006-02-10', 'Bayan', 'Nurtepe Mahallesi Mesken Sokak No 10 Kat 3', 'Istanbul', 'Kagithane', '0531 422 12 10'),
(13, '45615878957', 'Haluk', 'Kaya', '2006-02-10', 'Bay', 'Nurtepe Mahallesi Mesken Sokak No 10 Kat 3', 'Istanbul', 'Sisli', '0564 789 45 62'),
(14, '45578945120', 'Hasan', 'Demir', '2005-02-16', 'Bay', 'Cikmaz sokak yazir mahallesi no3 daire 5', 'Istanbul', 'Kagithane', '0564 789 45 62'),
(15, '45578945120', 'Ayşe', 'Kuru', '2007-01-31', 'Bayan', 'Kiraz Mahallesi Mesken Sokak No 10 Kat 7', 'Istanbul', 'Kagithane', '0531 422 12 14'),
(16, '45615878958', 'Vildan', 'Evren', '2006-12-19', 'Bayan', 'Nurtepe Mahallesi Mesken Sokak No 10 Kat8', 'Istanbul', 'Sisli', '0534 124 45 56'),
(17, '65587984527', 'Fatih', 'Adaş', '2006-12-12', 'Bay', 'Nurtepe Mahallesi Mesken Sokak No 10 Kat 7', 'Istanbul', 'Sisli', '0531 422 12 19'),
(18, '65545878950', 'Egem', 'Tuğ', '0000-00-00', 'Bay', 'Kiraz Mahallesi Mesken Sokak No 10 Kat 9', 'istanbul', 'Kagithane', '0564 789 45 67'),
(19, '45615878957', 'Veli', 'Kar', '2007-12-14', 'Bay', 'Nurtepe Mahallesi Mesken Sokak No 10 Kat 9', 'Istanbul', 'Kagithane', '0531 422 12 45'),
(20, '65545878945', 'Hüsniye', 'sen', '2005-11-11', 'Bayan', 'Nurtepe Mahallesi Mesken Sokak No 10 Kat 1', 'Istanbul', 'Sisli', '0534 124 47 56'),
(21, '45578945127', 'Ayşe', 'Demir', '2006-12-10', 'Bayan', 'Nurtepe Mahallesi Mesken Sokak No 10 Kat6', 'Istanbul', 'Kagithane', '0534 124 45 54'),
(22, '45578945122', 'Demet', 'Mert', '2005-06-12', 'Bayan', 'Cikmaz sokak yazir mahallesi no7 daire 1', 'Istanbul', 'Sisli', '0534 124 45 55'),
(23, '45578945128', 'Zehra', 'Cam', '2007-12-12', 'Bayan', 'Nurtepe Mahallesi Mesken Sokak No 10 Kat9', 'Istanbul', 'Seyrantepe', '0531 422 12 11'),
(24, '65545878952', 'Hacer', 'Gultekin', '2006-02-15', 'Bayan', 'Nurtepe Mahallesi Mesken Sokak No 10 Kat 6', 'istanul', 'Sisli', '0531 422 12 17'),
(25, '45615878955', 'Deniz', 'Mert', '2006-02-18', 'Bay', 'Nurtepe Mahallesi Mesken Sokak No 10 Kat 2', 'Istanbul', 'Kagithane', '0564 789 45 66'),
(26, '45578945144', 'Ayse', 'Cem', '2005-05-11', 'Bayan', 'Nurtepe Mahallesi Mesken Sokak No 10 Kat 4', 'Istanbul', 'Sisli', '0534 124 45 75'),
(27, '45615878959', 'Demet', 'Kara', '2006-12-18', 'Bayan', 'Cikmaz sokak yazir mahallesi no3 daire 8', 'Ä°stenbul', 'Seyrantepe', '0564 789 45 99'),
(28, '65545878988', 'Veli', 'Evren', '2007-02-10', 'Bay', 'Keykubat mahallesi bosna sokak no2 kat8', 'Istanbul', 'Sisli', '0564 789 45 44'),
(29, '45578945196', 'Zeynep', 'Gul', '2005-02-20', 'Bayan', 'Keykubat mahallesi bosna sokak no2 kat9', 'Istanbul', 'Sisli', '0564 789 45 69'),
(30, '45578945120', 'Ayse', 'Gencturk', '2005-11-11', 'Bayan', 'Nurtepe Mahallesi Mesken Sokak No 10 Kat 7', 'Istanbul', 'Kagithane', '0534 124 45 66'),
(31, '45578945120', 'Tuğçe', 'Gencturk', '2005-11-11', 'Bayan', 'Nurtepe Mahallesi Mesken Sokak No 10 Kat 7', 'Istanbul', 'Kagithane', '0534 124 45 66');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `planlar`
--

CREATE TABLE IF NOT EXISTS `planlar` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Basliklar` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci AUTO_INCREMENT=4 ;

--
-- Tablo döküm verisi `planlar`
--

INSERT INTO `planlar` (`ID`, `Basliklar`) VALUES
(1, 'YEMEK'),
(2, 'SEMINER'),
(3, 'DERS');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `seminerler`
--

CREATE TABLE IF NOT EXISTS `seminerler` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ParentID` int(11) NOT NULL DEFAULT '0',
  `Title` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `Url` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `Keywords` text COLLATE utf8_turkish_ci NOT NULL,
  `Description` text COLLATE utf8_turkish_ci NOT NULL,
  `Tarih` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `UpdateTarih` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `saattarih` datetime NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci AUTO_INCREMENT=4 ;

--
-- Tablo döküm verisi `seminerler`
--

INSERT INTO `seminerler` (`ID`, `ParentID`, `Title`, `Url`, `Keywords`, `Description`, `Tarih`, `UpdateTarih`, `saattarih`) VALUES
(1, 3, 'Veli Bilgilendirme', 'veli-bilgilendirme', 'veliler', 'veliler ve çocuklar', '', '06.06.2016 13:37:54', '2016-11-30 13:00:00'),
(2, 0, 'Ogrenci Bilgilendirme ', 's', 'd', 'ddd', '', '', '2016-01-13 18:00:00'),
(3, 0, 'Kisisel gelisim ', 'd', 'f', 'e', '', '', '2016-12-29 15:00:00');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `seminerler_tr`
--

CREATE TABLE IF NOT EXISTS `seminerler_tr` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `KatID` int(11) NOT NULL,
  `Title` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `Url` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `Keywords` text COLLATE utf8_turkish_ci NOT NULL,
  `Description` text COLLATE utf8_turkish_ci NOT NULL,
  `Text` text COLLATE utf8_turkish_ci NOT NULL,
  `Img` int(11) NOT NULL,
  `Hit` int(11) NOT NULL,
  `Tarih` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `siniflar`
--

CREATE TABLE IF NOT EXISTS `siniflar` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `baslik` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci AUTO_INCREMENT=4 ;

--
-- Tablo döküm verisi `siniflar`
--

INSERT INTO `siniflar` (`ID`, `baslik`) VALUES
(1, 'MİNİKLER'),
(2, 'SEVİMLİ ÇAMLAR'),
(3, 'ÇALIŞKAN ÇINARLAR');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `site_ayarlari`
--

CREATE TABLE IF NOT EXISTS `site_ayarlari` (
  `ID` int(1) NOT NULL AUTO_INCREMENT,
  `SiteTitle` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `SiteUrl` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `SiteDurum` tinyint(4) NOT NULL DEFAULT '1',
  `UyeDurum` tinyint(4) NOT NULL DEFAULT '0',
  `IcerikDurum` tinyint(4) NOT NULL DEFAULT '2',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci AUTO_INCREMENT=2 ;

--
-- Tablo döküm verisi `site_ayarlari`
--

INSERT INTO `site_ayarlari` (`ID`, `SiteTitle`, `SiteUrl`, `SiteDurum`, `UyeDurum`, `IcerikDurum`) VALUES
(1, 'Tarcin anasınıfı', 'tasarimci-web/kontrol/index.php', 1, 1, 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `site_iletisim`
--

CREATE TABLE IF NOT EXISTS `site_iletisim` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Title` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `Tel` varchar(20) COLLATE utf8_turkish_ci NOT NULL,
  `Tel_2` varchar(20) COLLATE utf8_turkish_ci NOT NULL,
  `Mobil` varchar(20) COLLATE utf8_turkish_ci NOT NULL,
  `Fax` varchar(20) COLLATE utf8_turkish_ci NOT NULL,
  `Adres` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `Ilce` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `Il` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `Mail` varchar(200) COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci AUTO_INCREMENT=2 ;

--
-- Tablo döküm verisi `site_iletisim`
--

INSERT INTO `site_iletisim` (`ID`, `Title`, `Tel`, `Tel_2`, `Mobil`, `Fax`, `Adres`, `Ilce`, `Il`, `Mail`) VALUES
(1, 'iletişim', '0543 654 56 76', '', '', '0323 876 23 22', 'Nurtepe Mahallesi Mesken Sokak No 10 Kat 3', 'Sişli', 'istanbul', 'iletisim@gmail.com');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `site_mail`
--

CREATE TABLE IF NOT EXISTS `site_mail` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Sunucu` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `UserName` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `UserPass` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `Port` varchar(10) COLLATE utf8_turkish_ci NOT NULL,
  `SslDurum` tinyint(4) NOT NULL,
  `GorunenAD` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci AUTO_INCREMENT=2 ;

--
-- Tablo döküm verisi `site_mail`
--

INSERT INTO `site_mail` (`ID`, `Sunucu`, `UserName`, `UserPass`, `Port`, `SslDurum`, `GorunenAD`) VALUES
(1, 'pop.gmail.com', 'vildan@gmail.com', '123456', '587987', 1, 'ANA SINIF');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `velibilgilendirme`
--

CREATE TABLE IF NOT EXISTS `velibilgilendirme` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Baslik` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `Icerik` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `saattarih` datetime NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci AUTO_INCREMENT=2 ;

--
-- Tablo döküm verisi `velibilgilendirme`
--

INSERT INTO `velibilgilendirme` (`ID`, `Baslik`, `Icerik`, `saattarih`) VALUES
(1, 'veli egitimi', 'veliler ilgilidir', '2016-05-18 13:00:00');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yemeklist`
--

CREATE TABLE IF NOT EXISTS `yemeklist` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `YemekAdi` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `YemekSaati` time NOT NULL,
  `YemekGunu` varchar(20) COLLATE utf8_turkish_ci NOT NULL,
  `YemekTarihi` date NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci AUTO_INCREMENT=6 ;

--
-- Tablo döküm verisi `yemeklist`
--

INSERT INTO `yemeklist` (`ID`, `YemekAdi`, `YemekSaati`, `YemekGunu`, `YemekTarihi`) VALUES
(1, 'jj', '13:00:00', 'Pazartesi', '2016-05-02'),
(2, 'fasulye', '13:00:00', 'Sali', '2016-05-03'),
(3, 'dolma', '13:00:00', 'Çarşamba', '2016-05-04'),
(4, 'peynirli börek', '13:00:00', 'Perşembe', '2016-05-12'),
(5, 'tost', '13:00:00', 'cuma', '2027-05-18');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
