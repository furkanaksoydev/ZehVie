-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 18 Eki 2024, 18:34:05
-- Sunucu sürümü: 10.4.32-MariaDB
-- PHP Sürümü: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `film`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `film`
--

CREATE TABLE `film` (
  `Film_ID` int(11) NOT NULL,
  `Film_Ad` varchar(16) NOT NULL,
  `Kategori_Ad` varchar(16) NOT NULL,
  `Film_Oyuncular` varchar(60) NOT NULL,
  `Film_Tarih` int(11) NOT NULL,
  `Film_Aciklama` text NOT NULL,
  `Film_Resim` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `film`
--

INSERT INTO `film` (`Film_ID`, `Film_Ad`, `Kategori_Ad`, `Film_Oyuncular`, `Film_Tarih`, `Film_Aciklama`, `Film_Resim`) VALUES
(1, 'Keşif', 'Aksiyon', 'Robert Redford, Mary Steenburgen, Brian McCarthy', 2017, 'İnsanoğlunun binlerce yıldır sorguladığı bir ihtimal olan ‘ölümden sonra yaşam’ fikri nihayet bilimsel olarak doğrulanmıştır. Ölümden sonra başka bir hayat, bu dünyadan başka gidilen bir yer vardır. Thomas Harbor (Robert Redford), bunu ispatlayan kişi olmuştur. Fakat öteki dünyanın keşfedilmesi, bir yıl içerisinde milyonlarca insanın intihar edip hayatlarına son vermesine neden olur. Çünkü herkes oraya varmak istemektedir. Tüm bu arbede içerisinde bir adam, Thomas Harbor\'ın oğlu Will Harbor (Jason Segel) ve Isla (Rooney Mara) birbirlerine aşık olur. Şimdi ikisi için de bildiklerini sorgulama zamanıdır. Thomas Harbor, ötedeki hayatın varlığını kanıtlamakla yetinmemekte, o hayatın neye benzediğini, ölenlerin tam olarak nereye gittiğini de bir şekilde görebilmeye çalışmaktadır.', 'kesif.jpg'),
(2, 'Takip : 96 Saat', 'Aksiyon', 'Liam Neeson, Maggie Grace, Famke Janssen', 2008, 'Artık emekli olmuş bir CIA ajanı olan Bryan, eski yeteneklerini yeniden hayata geçirmenin derdine düşmüştür. Zira, görüşemediği kızının kaçırılışını, cep telefonu bağlantısında hiçbir şey yapamadan dinleyen bir babanın durumundan daha kötü ne olabilir? Kâbus gibi bu durumu tersine çevirmek için Bryan harekete geçecektir. Ancak beyaz kadın ticareti ile uğraşan bu çetenin elinden kızını kurtarmak için önünde çok kısa bir zaman vardır. Bununla birlikte bir önemli sorun daha vardır. Bryan\'ın kendisinin Los Angeles\'te, kaçırılan kızının ise Paris\'te olması olayları iyice içinden çıkılamaz bir hale sokar.', 'takip.jpeg'),
(3, 'Not Defteri', 'Aşk ', 'Gena Rowlands, James Garner, Rachel McAdams', 2004, 'Yaşlılar için yapılmış bir bakımevinde yaşayan ve çevresindekiler tarafından \'Duke\' diye çağırılan ihtiyar adam sararmış defterinde yazılı olan bir aşk hikayesini okumaya başlar. Hikaye 1940 yılında başlar. Güney Carolina\'da yer alan Seabrook Adası\'na Allie Hamilton isimli 17 yaşında bir genç kız gelir. Ailesiyle birlikte tatile gelen Allie, burada yaşayan Noah isimli bir gençle yakınlaşmaya başlar. Aralarındaki sınıfsal ve ekonomik farklılıklara rağmen birbirlerine duydukları hissi engellemez, doyasıya yaşamaya başlarlar. Ancak onları bekleyen ayrılık 2. Dünya Savaşı\'nın kızışmasıyla birlikte gelmek üzeredir.', 'notdefteri.jpg'),
(4, 'Yıldızlararası', 'Bilim Kurgu ', 'Matthew McConaughey, Anne Hathaway, Jessica Chastain', 2014, 'Yıldızlararası\'nda, teknik bilgisi ve becerisi yüksek olan Cooper, geniş mısır tarlalarında çiftçilik yaparak geçinmektedir; amacı iki çocuğuna güvenli bir hayat sunmaktır. Onlarla yaşayan Büyükbaba Donald çocuklara göz kulak olurken, henüz 10 yaşındaki kızı Murph şaşırtıcı bir zekaya sahiptir. Geçmişte bıraktığı biliminsanı kariyerini özleyen Cooper\'un karşısına bir gün beklenmedik bir teklif çıkar ve ailesinin, dahası insanlığın güvenliği için zorlu bir karar alması gerekir...', 'yildizlararasi.jpg'),
(5, 'Zombieland', 'Komedi', 'Jesse Eisenberg, Emma Stone, Woody Harrelson', 2009, 'Ruben Fleischer’ın yönetmenliğini üstlendiği korku komedi türünde bir zombi filmi. Bir grup bozulmamış insan, zombilerin ele geçirdiği dünyada hayatta kalmaya çalışıyor.', 'zombieland.jpg'),
(6, 'Wanted', 'Aksiyon', 'Angelina Jolie, James McAvoy, Morgan Freeman', 2008, 'Wanted, kiralık katil olan babasının izinden giden bir gencin hikayesini anlatıyor. Şimdilerde Birleşmiş Milletler fahri elçisi olarak Ortadoğu\'nun çorak topraklarında gezinen Angelina Jolie ve dudakları, Rus yönetmen Bekmambetov’un son projesi Wanted ile görücüye çıkıyor. Babasının kiralık katil olduğunu öğrenen ve onun izinden gitmeye karar veren heyecanlı bir genç olan Wes, kendisine mesleğin inceliklerini öğretecek olan Fox ve Sloan adlı deneyimli katiller hamiliğinde çalışmaya başlar. Hayatında oldukça başarısız olan ve bu döngüyü kırmak isteyen Wes, Fox’u tanıdığı günden itibaren bakış açısını değiştirerek benliğinin içinde sinsi sinsi dolaşan kızgın ve öfkeli kurdu serbest bırakacaktır. Eğitimli bir suikastçı olmak elbette kolay değildir. Mark Millar’ın grafik romanından uyarlanan filmin, romandan oldukça farklı olduğu söyleniyor. Angelina Jolie, her zamanki gibi etrafa kızgın kızgın mermi sıkarak üzerine düşen vazifeyi hakkıyla yerine getirirken filmin bir diğer özelliğinin de, büyük ilgi toplayan Red One digital kameranın kullanıldığı ilk yapım olması durumunu belirtelim.', 'wanted.jpg'),
(7, 'Menü', 'Bilim Kurgu ', 'Ralph Fiennes, Anya Taylor-Joy, Nicholas Hoult', 2022, 'The Menu, uzak bir adada bulunan özel bir restorana giden genç bir çiftin hikayesini konu ediyor. Margot ve Tyler, menüsü ünlü bir şef tarafından hazırlanan seçkin bir restoranda yemek yemek için, bir adaya giderler. Onlara yemekte birbirinden farklı karakterde olan birçok kişi de eşlik eder. Ünlü şef Slowik, misafirlerine birbirinden farklı yemeklerin yer aldığı bir tadım menüsü hazırlamıştır. Ancak beklenmedik yemeklerin servis edildiği gecede, her masanın kendisine ait sırlarının ortaya çıkmasıyla gerilim dozu gittikçe artar.', 'menu.jpg'),
(8, 'Garfield', 'Komedi', 'Chris Pratt, Samuel L. Jackson, Hannah Waddingham', 2024, 'Garfield filminde bu kez tembel, şişman, alaycı ve lazanya seven bir kedi olan Garfield’ı vahşi bir macera bekliyor. Tembel, şişman ve alaycı ev kedisi Garfield’ın dağınık sokak kedisi babası Vic, beklenmedik bir şekilde ortaya çıkar. Yıllarca görüşmediği babası ile yeniden bir araya gelen Garfield, köpek arkadaşı Odie ile birlikte mükemmel hayatlarından ayrılmak zorunda kalır. Konforlu yaşamlarını geride bırakan ikili, Vic ile birlikte kendilerini komik olduğu kadar riskli bir soygunun içerisinde bulur.', 'garfield.jpg');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kategori`
--

CREATE TABLE `kategori` (
  `Kategori_ID` int(11) NOT NULL,
  `Kategori_Ad` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `kategori`
--

INSERT INTO `kategori` (`Kategori_ID`, `Kategori_Ad`) VALUES
(1, 'Aksiyon'),
(5, 'Aşk '),
(6, 'Bilim Kurgu '),
(3, 'Fantezi '),
(2, 'Komedi'),
(4, 'Korku ');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kullanicilar`
--

CREATE TABLE `kullanicilar` (
  `Kullanici_ID` int(11) NOT NULL,
  `Kullanici_Adi` varchar(16) NOT NULL,
  `Kullanici_EPosta` varchar(30) NOT NULL,
  `Kullanici_Sifre` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `kullanicilar`
--

INSERT INTO `kullanicilar` (`Kullanici_ID`, `Kullanici_Adi`, `Kullanici_EPosta`, `Kullanici_Sifre`) VALUES
(1, 'Tuğrul', 'tuğrul@gmail.com', 'tuğrul123'),
(2, 'Furkan', 'furkankdzc@gmail.com', 'furkan123'),
(3, 'soner', 'soner@gmail.com', 'soner123');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `film`
--
ALTER TABLE `film`
  ADD PRIMARY KEY (`Film_ID`),
  ADD KEY `Kategori_Ad` (`Kategori_Ad`);

--
-- Tablo için indeksler `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`Kategori_ID`),
  ADD UNIQUE KEY `Kategori_Ad` (`Kategori_Ad`);

--
-- Tablo için indeksler `kullanicilar`
--
ALTER TABLE `kullanicilar`
  ADD PRIMARY KEY (`Kullanici_ID`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `film`
--
ALTER TABLE `film`
  MODIFY `Film_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Tablo için AUTO_INCREMENT değeri `kategori`
--
ALTER TABLE `kategori`
  MODIFY `Kategori_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Tablo için AUTO_INCREMENT değeri `kullanicilar`
--
ALTER TABLE `kullanicilar`
  MODIFY `Kullanici_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Dökümü yapılmış tablolar için kısıtlamalar
--

--
-- Tablo kısıtlamaları `film`
--
ALTER TABLE `film`
  ADD CONSTRAINT `film_ibfk_1` FOREIGN KEY (`Kategori_Ad`) REFERENCES `kategori` (`Kategori_Ad`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
