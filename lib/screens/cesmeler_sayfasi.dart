// lib/screens/cesmeler_sayfasi.dart
import 'package:flutter/material.dart';
import 'package:izmit/screens/detail/cesme.dart';

import '../models/cesme.dart'; // Detay sayfası için gerekli

class CesmelerSayfasi extends StatelessWidget {
  final List<Cesme> cesmeListesi = [
    Cesme(
      ad: 'Canfeda Kethuda Hatun Çeşmesi',
      resimDosyaAdi: "canfeda.jpeg",
      aciklama: """Osmanlı döneminde sultanların ve şehzadelerin evlendirilen kızlarının dairelerindeki işlere bakan görevlilere 'kethuda' denirdi. (Kethuda: Bir daire veya konağın idaresine memur olan kişi. “Yardımcı ve kahya” anlamlarına gelir. Osmanlılar döneminde askeri ya da sivil kuruluşların başkanı, başkan yardımcısı veya baş sorumlusu olan kişiye verilen unvandır.) Canfeda Kadın'ın ne zaman yaşadığına ve çeşmesini ne zaman yaptırdığına dair bilgiler kesin değildir. Kaynaklara bakıldığında 3'uncu Murat (1574-1595) döneminde harem kethudası ve Nurbanu Valide Sultan'ın cariyesi olan Canfeda Kadın'ın adına rastlanır. Canfeda Kethuda Hatun tarafından Orhan Mahallesi'nde Orhan Camii (Gazi Süleyman Paşa Camii) karşısında yer alan ve kendi ismi ile anılan yerde bir çeşme yaptırmış ve hayrının devamı için gerekli akarlar bırakmıştır. Dikine dikdortgen formlu olan çeşmenin yapımında, kesme taş ve mermer malzeme kullanılmıştır. Çeşmenin mermerden yapılmış aynalığı vardır. Aynalık üzerinde oyma tekniğinde yapılmış süslemeye yer verilmiştir. Taç kısmı ortası oval, çerçeve içinde tuğralı bir çeşmedir. Daha sonra onarım gören ve hazne bölümü betonarme sıvalı olarak dikdortgen kitabesinde sülüs yazısıyla bezelenen caminin kitabesinde hicri 1242, miladi 1826 tarihi mevcuttur. Çeşme 2'nci Mahmut'un hazinedar ustası Su'ada tarafından 1826 yılında tamir ettirilmiştir denilmektedir.

  Cephesinde kemer üstü aynalık kısmı üzerindeki dikdörtgen kitabede sülüs yazı ile H.1243 M.1827 tarihi mevcuttur. Altı satırlık Tamir Kitabesi güzel bir sülüs yazıdır:

  Sahibet’ül Hayrat Canfeda Kethüda Kadın merhumenin İznikmid derununda inşa ve icrasına muvaffak oldukları

  Çeşmeleri su yollarının mürur-u zeman ite müşrif-i harab ve muattal olmağla

  Mu’ahharen menba’ından külliyen tamir ve çeşmelere icraya muvaffaka olan hala serlevhai

  Şehinşah-ı Cihan Hazret-i Gazi Sultan Adli Mahmud Han medde zılal-i

  Devletehu ila ahır id-Devran Efendimiz Hazretlerinin Haremeseray-ı Humayunlarında Hazinedar ustalık

  Rütbe-i cellilisiyle şerefyab olan alliyet’üş-şan Suada usta hazretlerinin i’marına muvaffak oldukları hayratıdır. Sene 1242 (M.1826)""",
    ),
    Cesme(
      ad: 'Emine (Tüysüz) Çeşmesi',
      resimDosyaAdi: 'emie.jpg',
      aciklama: """
Tüysüz Sokak’ta Tüysüz Konağı’nın arkasında bulunmaktadır. Dörtgen planlı, hazneli çeşme bir tarafı kitabeli çift yüzlüdür. Kitabeli yüzü yola, diğer yüzü parka doğrudur. Aynalık kısımlarında 18. yüzyıla ait bitkisel bezemeler kazınarak betimlenmiştir. H.1198 M. 1782 yılında I. Abdülhamit döneminde inşa edilmiştir. Her iki yüzü de resimlidir. Kitabesiz yüzde bir ince boyunlu vazo ve bir çanakta içinde iki çiçek demeti kabartmaları bütün güzelliği ile bugün bile görülebilmektedir. Güzel bir nesih olan kitabesinde şu sözler yer alır:

Emine Hacce zatül hayr merhum

Vasiyet ile itdi çeşmei icra

Gelüp bir teşine dedi tarihi

Şehid-i Kerbela aşkına iç ma

Sene 1663 (M 1750)""",
    ),
    Cesme(ad: "Kertil Çeşme",
        resimDosyaAdi: "kertil.jpg",
        aciklama: "İzmit’in en eski çeşmelerinden olup suyunun tadı  acımtrak olmasına karşın su yokluğunda kesilmeyen kaynağı ile önemli işlev görmüştür. Kertil Tekke yakınında olup kimi göz hastalıklarına iyi geldiğine inanılmıştır. 1930 yılında Vakıflar’ca satılınca üzerine bir ev yapılmış, gerisinde büyük taşlardan örülü bir deposu vardı. Yalağı sık görüldüğü üzere bir lahit kapağı, farkı ise dikey yerleştirilmiş olmasındadır. Kitabesi yoktur, cephesi grekçe yazılı antik taşlarla örtülüdür. Arka arkaya çevre düzenlemeleri sonucu özelliğini kaybetmiş durumdadır."),
    Cesme(ad: "Pertev Paşa Çeşmeleri",
        resimDosyaAdi: "pertev.jpg",
        aciklama: "Cami avlusunun güneybatı köşesinde bir çeşme grubundan oluşur. Biri yolculara, diğeri de hayvanlara ait olmak üzere iki kısımdır. Büyük sivri kemerin içinde çeşme aynası ve kitabesi mevcuttur. Sivri kemerli,kesme taştan, yolcuların ve halkın su içtiği çeşmenin aynasındaki sülüs yazılı kitabede H. 987 M.1571 tarihi ile Çeşme-i Latif-i Pertev Mehmet Paşa yazısı mevcuttur. Üç bölümlü çeşmenin yalakları bugün yol altında kalmıştır. Bitişiğinde moloz taş duvar örülü, tuğla kemerlerden oluşan, yan yana iki niş içinde kervan hayvanları için yapılmış çeşmeler yer alır. Sekizgen kasnak üzerinde bir kubbe ile örtülü su haznesi, insanlar tarafından kullanılan ana çeşmenin arkasında yer almaktadır."),
    Cesme(ad: "Anıtsal Roma Çeşmesi (Nympheon)",
        resimDosyaAdi: "izmit_logo.png",
        aciklama: """İnönü Caddesi üzerinde eski Yenituran Okulu’nun doğu yanında, halkın “Mahzenli” dediği bu binanın temellerinde bir “Anıtsal Çeşme”ye rastlanmış, 1930’lu yıllarda İstanbul Arkeoloji Müzesi tarafından kazısı yapılmış ve buluntuları İstanbul Arkeoloji Müzesi’ne taşınmıştır. Kimi parçaları da İzmit Müzesi’ndedir. İS II.inci yüzyıla ait olan ve su perileri Nymphe’ler adına yapılmış bu anıtsal çeşme kalıntıları arasındaki mermer mimari parçaların görkemli boyutlarına göre, Anadolunun en büyük nymphaionlarından biri olduğu anlaşılmaktadır. M.Ö. III-II.yüzyıllarda Nekropol olan Tepecik mahallesi ile bugünkü kent merkezi yapılarla donatıldı. Kendisi aynı zamanda su kaynağı olması gereken Çeşme binası (Nympheion) inşa edildi. Nympheion, suyunu bulunduğu yerdeki kaynaktan almış olmalı, çünkü bu gün dahi çeşmenin yanındaki kaynaktan su fışkırmaktadır.

İmparator Hadrianus döneminde, 123 yılında onarıldığını bildiğimiz Çeşme binasının yerinde Hellenistik devirde de daha küçük bir çeşme yapısı olması güçlü bir olasılıktır. Halihazırdaki çeşmenin en azından İ.S. I. yy’da yapılıp, onarılarak kullanıldığı anlaşılıyor. Antik çağda bir hayli görkemli olduğunu müzede yer alan kalıntılardan gördüğümüz bu çeşme binasının yerinde bugün çok az bir dokusu kalabilmiştir."""),
    Cesme(ad: "Zeliha Hanım Çeşmesi",
        resimDosyaAdi: "zeliha.jpg",
        aciklama: "Kapanca sokakta bulunan çeşme dikdörtgen planlıdır.Cephesinde ikisıra tuğla bir sıra taştan oluşan almaşık teknik kullanılmıştır. Merkezinde kılıcınla örülmüş tuğlalardan meydana gelen sivri kemerli çeşme aynasında kitabesi mevcuttur. Sülüs yazıyla yazılan kitabesi altı satırdan oluşmaktadır. Sivri kemer içinde kazıma tekniğinde iki adet selvi motifi bulunmaktadır. Yalak kısmı sonradan ilave edilmiştir.")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        title: Text('Çeşmeler'),
      ),
      body: ListView.builder(
        itemCount: cesmeListesi.length,
        itemBuilder: (context, index) {
          return Card(
            elevation: 4.0,
            margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CesmeDetaySayfasi(cesme: cesmeListesi[index]),
                  ),
                );
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Image.asset(
                    'assets/${cesmeListesi[index].resimDosyaAdi}',
                    height: 200.0,
                    fit: BoxFit.cover,
                  ),
                  Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                      cesmeListesi[index].ad,
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