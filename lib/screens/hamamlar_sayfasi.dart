// lib/screens/hamamlar_sayfasi.dart
import 'package:flutter/material.dart';
import 'package:izmit/screens/detail/hamam.dart';

import '../models/hamam.dart'; // Detay sayfası için gerekli

class HamamlarSayfasi extends StatelessWidget {
  final List<Hamam> hamamListesi = [
    Hamam(
      ad: 'Küçük Hamam',
      resimDosyaAdi: 'kucuk.jpg',
      aciklama: 'Kentin doğusunda, Çukurbağ Mahallesi’nde, Portakal Hafız Konağı’nın karşı çaprazında yer almaktadır. Oldukça küçük boyutlarda inşa edilmiştir. Nezih Fıratlı’ya göre hamam, 19. yüzyılın sonuna ait bir konak (Portakal Hafız Konağı) hamamıdır. Yapının tarihine ilişkin bir başka tespit, Sultan II. Mahmut döneminde inşa edildiğidir. Tek hamam planlıdır. Nezih Fıratlı, yapının önünde ahşap camekân kısmı olduğunu belirtmektedir. Camekândan sonra kubbe örtülü bir kısmı, buradan da, bir kubbe ve manastır tonozu ile örtülü dikdörtgen planlı bir kısma geçilir. Buna bitişik olan kubbe örtülü bir diğer küçük oda vardır. Bunlardan ikincisinin doğusunda külhan(hamamın altında bulunan, hamamı ve suyunu ısıtan, kapalı ve geniş ocak) kuzeyinde su deposu bulunmaktadır. Yakın tarihe kadar hamam işlevini sürdüren ‘Küçük Hamam’ İzmit’teki tarihi hamamlar içerisinde en çok restorasyona ihtiyacı olan hamam yapısıdır.',
    ),
    Hamam(
      ad: 'Mehmet Bey Hamamı (Orta Hamam) ',
      resimDosyaAdi: 'mehmet.jpeg',
      aciklama: '16. yüzyılda yapılan Orta Hamam, günümüzde Fevziye Camii olarak isimlendirilen Mehmet Bey Camii’sini yaptıran Mehmet Bey’in camiye gelir getirmesi amacıyla yaptırdığı eserler arasında bulunmaktadır. 1719 depreminde yıkılıp yeniden yapılmıştır. Mehmet Bey Hamamı ve Orta Hamam olarak bilinen hamam, günümüzde İzmit’in en işlek caddelerinden biri olan Fethiye Caddesi üzerinde yer almaktadır. Tek hamam olan bu hamamın,  bir çifte hamam olan Pertev Paşa Hamamı’na plan ve yapım tekniği bakımından benzerliğinden dolayı Mimar Sinan tarafından Pertev Paşa Külliyesi’nin inşası sırasında yapılmış olabileceği belirtilmektedir. Mimar Sinan’ın eserlerinin listesini veren Tezkeret’ül Ebniye’de Mehmet Bey Camisi’ni Mimar Sinan eseri olarak belirtilmesine karşın hamamın Mimar Sinan tarafından yapıldığını gösteren herhangi bir bilgiye rastlanmamıştır. Hamam soğukluk, ılıklık ve sıcaklık bölümlerinden meydana gelmiştir. Soğukluk kısmı moloz taş ve kâgir karışımı olup, üzeri ahşap bir çatı ile örtülüdür. Ilıklık kısmı dikdörtgen planlı ve üç bölümlü olup, üzeri kubbe ile örtülmüştür. Kubbeli sıcaklığın içerisine altı köşeli bir göbek taşı yerleştirilmiştir. Bunun yanı sıra sıcaklığın köşelerinde halvet hücreleri de yerleştirilmiştir. Yıkanma hücrelerinin doğusunda bulunan iki hücre diğerlerine göre çok daha büyüktür. Günümüzde de hamam olarak işlevini sürdürmektedir.',
    ),
    Hamam(ad: "İzmit Süleyman Paşa Hamamı ",
        resimDosyaAdi: "suleyman2.jpg",
        aciklama: """Süleyman Paşa Hamamı, Orhan Gazi Camii'ni de inşa ettiren şehzade Süleyman tarafından yaptırılmıştır. Erkek ve kadınlara ayrı, çift hamam şeklindedir. Süleyman Paşa'nın kesin doğum tarihi belli değildir ancak 1316 yılında doğduğuna dair bilgiler bulunmaktadır. Orhan Gazi'nin oğludur. Annesi Nilüfer Hatun'dur. 1330'da İznik'in, 1337'de İzmit'in fethine katılmıştır. Babası tarafından İzmit ve çevresi tımar olarak kendisine verilmiş, Rumeli'deki harekâtları kumanda etmiştir. Karl Klinghardt’ın 1925 yılındaki rölövelerinden elde edilen bilgilere göre; hamamın soğukluk kısmı 950 x 950 m. ölçüsünde olup, 
üzeri çatı ile örtülmüştür. İkişer pencere ve birer kapıları vardır. Soğukluktan yuvarlak bir kemerle 385 x 360 m. ölçüsünde kareye yakın dikdörtgen planlı ılıklığa geçilmektedir. Bu bölümün üzeri iki yüksek kubbe ile örtülüdür. Sıcaklık (halvet) bölümü ise 385m. x 385 m. ölçüsünde kare planlı olup, üzeri iki alçak kubbe ile örtülüdür. Her bölmede üçer kurna vardır. Ilıklıktan iki tuvalete geçilmektedir. Bunların kuzey tarafında külhan ve su deposu vardır. Hamamın kanalizasyon sistemi de son derece ileri düzeyde yapılmış olup, bu sitemle pis sular denize kadar şehrin içine dağılmadan ulaştırılmıştır. Klinghardt, kitabına soğukluğun ortasındaki güzel çanaklı bir havuzun resmini de koymuştur. Kubbeler kürevi karelere oturmaktadır. Süleyman Paşa Hamamı, İzmit'te günümüze kadar ayakta kalabilen en erken tarihli Osmanlı dönemi hamam yapısıdır."""),
    Hamam(ad: "Yalı Hamamı ",
        resimDosyaAdi: "yali.png",
        aciklama: """Kemal Paşa Mahallesi, eskiden Yalıboyu denilen kentin sahiline dik inen Yalı Hamamı Sokak’ta yer almaktadır. Yapıldığı dönemde deniz kenarına yakın olması nedeniyle bu ismi almıştır. Kitabesi bulunmamaktadır. 
Plan özellikleri ve yapı tekniği açısından 19. yüzyılda inşa edildiği düşünülmektedir. Kareye yakın dikdörtgen planlı tek hamamdır. Soğukluk, ılıklık ve sıcaklık bölümlerinden meydana gelmiştir. Ilıklık ve sıcaklık kareye yakın planlıdır. Batıdaki ahşap camekân bölümünden sonra iki yanda yarım, ortada bir tam ve bir yarım kubbeyle örtülü soğukluk kısmına geçilmektedir. Tam kubbeli kısımdan geçilen üç bölümlü sıcaklığın (halvet), sağ tarafındaki daha geniş kare planlı bölüm, manastır tonozla örtülmüştür. Orta ve sol bölümler kubbeyle örtülüdür, solda bir kapı ile geçilen yarım kubbe örtülü hususi bir yıkanma yeri vardır. Arkalarında külhan kısmı uzanmaktadır. Son yıllarda yapılan tamir ve ekler sonucu özelliğini büyük ölçüde yitirmiştir. Günümüzde de hamam olarak işlevini sürdürmektedir. """),
    Hamam(ad: "Yeni Hamam ",
        resimDosyaAdi: "yeni.jpg",
        aciklama: """Hacı Hasan Mahallesi’ndeki 50. Yıl İlkokulu’nun tam karşısında bulunan bu Yeni Hamam’ın bir kitabesi bulunmamaktadır. Üzerine çok katlı bir bina yapıldığından hamam bodrum katı düzeyinde kalmıştır. Yapı üslubundan 18.yüzyılın sonlarında yapıldığı sanılmaktadır. Plan olarak İstanbul Cağaloğlu Hamamı ile çok yakın benzerlikleri bulunmaktadır. 
Bu nedenle İzmit bölgesinde araştırmalar yapan Arkeolog Nezih Fıratlı hamamın yapım tarihini 18. yüzyıl ortaları olarak belirlemektedir. Avni Öztüre ise hamamın 1820-1826 yıllarında yapılmış olabileceği görüşündedir. Soğukluk, ılıklık ve sıcaklık bölümlerinden meydana gelen hamam, kesme ve moloz taştan yapılmıştır. Önündeki camekan kısmı ahşap olup yıkılmıştır. Buradan birkaç basamaklı merdiven ile üstü ahşap örtülü soğukluk kısmına geçilir. Dikdörtgen planlı “Soğukluk” bölümü oldukça yüksek çifte bir kubbe ile örtülüdür. Bunun kuzey yanında kemerle ayrılı, üç bölmeli yüksek bir kısım vardır. 
Bu kısım ortada kubbe, yanlarda tonoz ile örtülüdür. Soğukluğun batısındaki “Sıcaklık“ (Halvet) kareye yakın planlı olup, üzeri merkezi bir kubbe, köşelerde yine kubbe, arlarda tonoz ile örtülüdür. 
Külhan, sıcaklığın batısındadır. Bu bölümün dört köşesine birer özel yıkanma yeri, aralarına da açık yıkanma yerleri yapılmıştır. Ortada sekiz köseli bir göbek taşı bulunmaktadır. Son olarak 2018 yılı Kasım ayında İzmit Belediyesi tarafından restorasyonu tamamlanmıştır."""),

    // Diğer hamamları ekleyin
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        title: Text('Hamamlar'),
      ),
      body: ListView.builder(
        itemCount: hamamListesi.length,
        itemBuilder: (context, index) {
          return Card(
            elevation: 4.0,
            margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HamamDetaySayfasi(hamam: hamamListesi[index]),
                  ),
                );
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Image.asset(
                    'assets/${hamamListesi[index].resimDosyaAdi}',
                    height: 200.0,
                    fit: BoxFit.cover,
                  ),
                  Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                      hamamListesi[index].ad,
                      style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}