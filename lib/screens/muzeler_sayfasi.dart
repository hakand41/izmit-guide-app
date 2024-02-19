// lib/screens/muzeler_sayfasi.dart
import 'package:flutter/material.dart';
import 'package:izmit/screens/detail/muze.dart';

import '../models/muze.dart'; // Detay sayfası için gerekli

class MuzelerSayfasi extends StatelessWidget {
  final List<Muze> muzeListesi = [
    Muze(
      ad: 'Arkeoloji ve Etnografya Müzesi',
      resimDosyaAdi: 'arkeoloji.jpg',
      aciklama: "Arkeoloji ve Etnografya Müzesi, paha biçilemez tarihi eserlere ev sahipliği yapıyor. 1873-1910 yılları arasında inşa edilen tarihi gar binaları kompleksine ait tamir atölyesi, su deposu, lojman binası ve iki adet Tekel deposunun birleştirilmesiyle oluşturulan teşhir salonunu gezenler, Roma, Bizans ve Osmanlı Dönemi eserleri arasında zamanda yolculuk yapıyorlar. Alman Mimar Otto Ritter’in imzasını taşıyan bina, 2007 yılından bu yana müze olarak hizmet veriyor.",
    ),
    Muze(
      ad: 'ATATÜRK VE REDİF MÜZESİ',
      resimDosyaAdi: 'ata.jpg',
      aciklama: """İzmit Mutasarrıfı Hasan Paşa tarafından Sultan Abdülaziz döneminde (1861-1876 ) Kasr-ı Hümayun ile birlikte yaptırılmıştır. İkinci ampir üslubunda, yarı kâgir kışla tipi bir yapıdır.

Osmanlı’nın son döneminde İzmit’teki Redif subayları için yapılmış Redif Dairesi’nin kalem işi bezemeleri dikkat çekicidir. Yapı 1999 depremine kadar askeri mahkeme olarak kullanılmış, onarım gördükten sonra müze olarak ziyarete açılmıştır."""),
      Muze(ad: "BASIN MÜZESİ",
          resimDosyaAdi: "basin.jpg",
          aciklama: "Türkiye’nin 5 basın müzesinden biri olan Kocaeli Basın Müzesi, Türk basın tarihine adını altın harflerle yazdıran duayen isimlerin eserlerine ev sahipliği yapıyor. İzmit’teki müzede ayrıca yerel gazetelerin eski sayıları, eski fotoğraf makineleri, matbaada kullanılan çeşitli aletler, eski daktilolar sergileniyor."),
      Muze(ad: "TCG HIZIR REİS MÜZE GEMİSİ",
          resimDosyaAdi: "denizalti.jpg",
          aciklama: "2. Dünya Savaşı sonrası 30 yıl süreyle ABD Deniz Kuvvetleri’nde görev yapan USS Gudgeon denizaltısı, 1983’de TCG Hızırreis adını alarak Türk Deniz Kuvvetlerine teslim edilir. Türk sancağıyla 21 yıl hizmet veren ve 2004 yılında emekli edilen TCG Hızırreis, 29 Ekim 2004’ten bu yana İzmit sahilinde sergileniyor."),
      Muze(ad: "DEPREM MÜZESİ",
          resimDosyaAdi: "deprem.jpg",
          aciklama: "17 Ağustos 1999 yılında yaşanan Marmara Depremi'ni unutturmamak ve halkı deprem konusunda bilinçlendirmek amacıyla İzmit Belediyesi tarafından Cephanelik Mesire Alanı'nda 2017 yılında açılmıştır."),
      Muze(ad: "TARİHİ GAR BİNASI",
          resimDosyaAdi: "gar.jpg",
          aciklama: """Alman Mimar Otto Ritter tarafından çizilen ve 1873-1910 tarihleri arasında 21 dönüm alana inşa edilen Gar, Kocaeli’nin şehir hafızasında önemli yere sahip.

Atatürk ve birçok önemli devlet adamının karşılama törenlerine tanıklık eden tarihi Gar, 2006 yılında restore edilmiştir. Garın bir kısmı Kocaeli Kültür ve Tabiat Varlıklarını Koruma Bölge Kurulunun himayesindedir, bir kısmı ise müzedir."""),
      Muze(ad: "TCG GAYRET MÜZE GEMİSİ",
          resimDosyaAdi: "gemi.jpg",
          aciklama: "TCG Gayret ismiyle 20 yılı aşkın süre pek çok önemli görevi başarıyla yerine getiren gemi, 1995 yılında hizmet dışına ayrılır. “Müze-Gemi Projesi” kapsamında Kocaeli Valiliği, Kocaeli Büyükşehir Belediyesi ve Donanma Komutanlığı’nın girişimleri ile modern müzecilik anlayışına göre dekore edilen gemi, 1997 yılında TCG Gayret Müzesi olarak İzmit sahilinde ziyarete açılmıştır."),
      Muze(ad: "KASR-I HÜMAYUN",
          resimDosyaAdi: "humayun.jpg",
          aciklama: """Saat Kulesi’nin yanındaki Kültür Tepesi’nde bulunan Kasr-ı Hümayun, bir diğer adıyla Av Köşkü, 19. yüzyılda, Osmanlı Sultanı Abdülaziz tarafından hassa mimarı Garabet Amira Balyan’a yaptırılmıştır. Mimarisinde neoklasik, barok ve klasik Osmanlı sanatı üslup özellikleri göze çarpar. İki katlı barok üslupla yapılmış köşkün cephesi mermer sütunlarla çevrilidir.

İçeride yeterince aydınlatma sağlamak amacıyla ince, uzun ve yuvarlak formda düzenlenen kemerli pencereleri, mermer işçiliği ve tavan süslemeleri göz kamaştırıcı güzelliktedir. Kasr-ı Hümayun’un bir özelliği de Kurtuluş Savaşı sırasında Atatürk’ün yerli ve yabancı gazetecilere düzenlediği basın toplantısına ev sahipliği yapmasıdır."""),
      Muze(ad: "SEKA KAĞIT MÜZESİ",
          resimDosyaAdi: "seka.jpg",
          aciklama: """Kaç “adam olacak çocuk”un defteri, kaç gazetenin sayfası olmuştur… Ne mektuplar yazılmıştır kim bilir, ne şiirler karalanmıştır o kağıtlara… SEKA Kâğıt Müzesi, Türkiye’nin en büyük endüstriyel dönüşüm projesinin bir parçası olarak Kocaeli’nin medar-ı iftiharlarından. Müze, Türkiye’de kâğıt üretimi dendiğinde akla gelen en önemli kurum olan SEKA’ya ve tüm “Sekalılara” adanmıştır.

Çalışanların bir zamanlar alın teri döktükleri mekanlarda, hatıralarına ve geçmişe yolculuk yapılan müzede, her yönüyle kâğıt, kâğıdın tarihi ve üretim süreçleri anlatılıyor. Ziyaretçileri, Mehmed Ali Kâğıtçı’nın idealist düşlerinden SEKA fabrikasının hikâyesine uzanan bir tarih yolculuğu bekliyor""")
    // Diğer müzeleri ekleyin
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        title: Text('Müzeler'),
      ),
      body: ListView.builder(
        itemCount: muzeListesi.length,
        itemBuilder: (context, index) {
          return Card(
            elevation: 4.0,
            margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MuzeDetaySayfasi(muze: muzeListesi[index]),
                  ),
                );
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Image.asset(
                    'assets/${muzeListesi[index].resimDosyaAdi}',
                    height: 200.0,
                    fit: BoxFit.cover,
                  ),
                  Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                      muzeListesi[index].ad,
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