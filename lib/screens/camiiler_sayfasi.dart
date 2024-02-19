// lib/screens/camiiler_sayfasi.dart
import 'package:flutter/material.dart';
import 'package:izmit/screens/detail/cami.dart';
import '../models/cami.dart';

class CamiilerSayfasi extends StatelessWidget {
  final List<Cami> camiListesi = [
    Cami(
      ad: 'AKÇAKOCA DERE CAMİİ',
      resimDosyaAdi: "akcakoca.jpg",
      aciklama:
      '1327-1328 yıllarında inşa edildiği düşünülen İzmit’teki caminin banisi Akçakoca’dır. Orhan Gazi döneminde Nikomedya’yı kuşatan Gazi Akçakoca’dan yadigar cami, yaşayan bir tarih olarak asırlardır varlığını sürdürüp ziyaretçilerini bekliyor.',
    ),
    Cami(ad: 'İZMİT ALACA MESCİT', resimDosyaAdi: 'alaca.jpeg', aciklama: 'Bizans Dönemi’ne ait Jüstinyen Sarayı kalıntıları üzerine, İzmit Kadısı El Hac Mustafa bin Mehmet El Gümüşzade tarafından 1598 tarihinde yaptırılmıştır. Dörtgen plan esasına göre inşa edilmiş cami, kâgir duvarlıdır. Mescide nazaran uzunluğu ile dikkat çeken minaresi de kâgirdir. Şerefe altı, mescit saçağına uygun şekilde kirpilidir. Kirpi minaresi ile çini süslemeleri, caminin karakteristik özelliğidir.'),
  Cami(
  ad: 'ÇALIK AHMET AĞA CAMİİ',
  resimDosyaAdi: "calik.jpg",
  aciklama: "18. yüzyılın başına tarihlenen cami 1766 depreminde yıkılmış, ahşap çatılı olarak tekrar inşa edilmiştir. Son şeklini 1894 depreminden sonra alan cami, 1999 sonrasında boyutları dışında eski mimari özellikleri dikkate alınarak yenilenmiştir. Dikdörtgen planlı caminin kuzeyinde, kapalı son cemaat yeri bulunur. Günümüzde minareden yoksun olsa da ahşap iç kubbesiyle dikkat çekicidir."),
    Cami(
        ad: 'MEHMET BEY CAMİİ - FEVZİYE CAMİİ',
        resimDosyaAdi: "fevziye.jpg",
        aciklama:"1576’da İzmit eşrafından Mehmet Bey tarafından yaptırılan Fevziye Camii’nin ilk mimarı Mimar Sinan’dır. Ne yazık ki çeşitli doğal afetlerle ve yangınlarla defalarca yıkılmış, ardından aynı yere tekrar inşa edilmiştir. Günümüze ulaşan binaları arasından en dikkat çekicilerinden biri namaz vakitlerinin hesaplandığı muvakkithanedir. 1999 depreminde ağır hasar gören camii 2004 yılında tekrar ibadete açılmıştır. Toplam 10 bin metrekarelik alana yayılan Fevziye Camii Parkı, içinde doğal dere görünümünde göl, su kemeri, köprü, oturma grupları, yürüyüş yolları ve kafeteryalar bulunan bir dinlenme merkezi haline getirilmiştir."),
    Cami(
        ad: 'ABDÜSSELAM İMARET CAMİİ',
        resimDosyaAdi: "imaret.jpg",
        aciklama: "Miladi 1524 (Hicri 931) yılında Defterdar Abdüsselam tarafından Mimar Sinan’a yaptırılmıştır. Sinan’ın ilk eserlerinden kabul edilen İzmit’teki caminin dış çevre duvarları ile minaresi yapıldığı dönemin özelliğini taşır. Zamanında kubbeli olup 1776 yılındaki depremde yıkılan cami, 1872 yılında Altıncıoğlu Hatice Hanım tarafından çatılı olarak tekrar yaptırılmıştır."),
    Cami(ad: "GAZİ SÜLEYMAN PAŞA CAMİİ - ORHAN CAMİİ",
        resimDosyaAdi: "orhan.jpg",
        aciklama: "Eski İzmit’in merkez noktalarından biri olan Orhan Mahallesi’ne hâkim bir tepe üzerine inşa edilmiş, yörenin ilk camisidir. Osmanlı Devleti’nin kuruluş döneminde Orhan Gazi’nin şehzadesi Süleyman Gazi tarafından babası adına yaptırılmıştır. Fethin simgesi olarak da manevi değere sahip camide, 120 yılı aşkın süredir imamlar cuma hutbesine kılıçla çıkmaktadır."),
    Cami(ad: "PORTAKAL HAFIZ MESCİDİ",
        resimDosyaAdi: "portakal.jpg",
        aciklama: "İzmit’in eski mahallelerinden Akçakoca Mahallesi’nde inşa edinen Portakaloğlu Mustafa Ağa Mescidi, Portakal Hafız Mescidi olarak da biliniyor. Osmanlı döneminde İzmit’in pek çok yerinde görülen mahalle mescitlerinin önemli örneklerindendir. İnşa tarihi ve banisi kesin olarak bilinmese de yapılan araştırmalarda camiyle alakalı 1192 Hicri tarihli bir belgeye ulaşılmıştır. Dolayısıyla yapının 18. yüzyılda inşa edilmiş olabileceği düşünülmektedir."),
    Cami(ad: "PERTEV MEHMET PAŞA KÜLLİYESİ - YENİ CUMA CAMİİ",
        resimDosyaAdi: "yeni-cuma.jpg",
        aciklama: "Yeni Cuma Camii olarak da bilinen Pertev Mehmet Paşa Camii, büyük bir külliyenin günümüze ulaşmış yapılarından. Caminin yanı sıra çeşme, şadırvan ve sübyan mektebi, geçmişin görkemini gözler önüne seriyor. Mimar Sinan’ın Kocaeli’deki müstesna eserlerinden biri olan caminin içerisinde çiniye yer verilmeyişi, o dönem yapıları arasında pek de karşılaşılmayan ilginç bir örnek olarak dikkat çekiyor."),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        title: Text('Camiiler'),
      ),
      body: ListView.builder(
        itemCount: camiListesi.length,
        itemBuilder: (context, index) {
          return Card(
            elevation: 4.0,
            margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CamiDetaySayfasi(cami: camiListesi[index]),
                  ),
                );
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Image.asset(
                    'assets/${camiListesi[index].resimDosyaAdi}',
                    height: 200.0,
                    fit: BoxFit.cover,
                  ),
                  Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                      camiListesi[index].ad,
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
