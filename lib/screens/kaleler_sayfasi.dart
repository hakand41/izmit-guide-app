// lib/screens/kaleler_sayfasi.dart
import 'package:flutter/material.dart';
import 'package:izmit/screens/detail/kale.dart';

import '../models/kale.dart'; // Detay sayfası için gerekli

class KalelerSayfasi extends StatelessWidget {
  final List<Kale> kaleListesi = [
    Kale(
      ad: 'İzmit Saat Kulesi',
      resimDosyaAdi: 'kule.jpg',
      aciklama: "İzmit, Kemalpaşa Mahallesi'nde Kasr-ı Hümayun (Saray Müze) ile Atatürk Heykeli arasında yer alan, kentin karekteristik Saat Kulesi'dir. İzmit Mutasarrıfı Musa Kazım Bey tarafından, Sultan II.Abdülhamit’in tahta çıkışının 25. yıldönümü nedeniyle 1902 yılında Neoklasik üslupta Hereke ve Tavşancıldan getirilen traverten taşlardan yaptırılmıştır.",
    ),
    Kale(
      ad: 'İzmit İç Kale Surları',
      resimDosyaAdi: 'ic_kale.jpg',
      aciklama: "Nicomedia döneminde ayakta kalan sur duvarları ortaçağ özelliklerini taşımaktadır ve burçların bulunduğu iç kaleye ait bir burçtur. Nicomedia dış şehir surları içerisindeki iç kaleye ait Bizans döneminde yapılmış Osmanlı döneminde onarılmıştır.[2] İç kale Surlarının duvarlarının aslında bazısının tiyatronun duvarları olduğu, Tiyatro alanı 1995 yılında İç Kale olarak Anıtlar Kurulu tarafından 1. Derece Arkeolojik Sit alanı olarak tescillenmiştir. 2006 Yılı 'Kocaeli İli ve İlçeleri Arkeolojik Yüzey Araştırması'nda tiyatronun planı çıkarılmıştır. Ölçüleri yaklaşık 164x50 m ebatlarında olduğu ortaya çıkmıştır. Bu ölçüler ile şimdiye kadar antik dünyanın en büyük tiyatrosu(amphi tiyatro değil) olarak bilinen Efes Antik Tiyatrosundan daha büyük olduğu tespit edilmiştir.",
    ),
    // Diğer kaleleri ekleyin
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        title: Text('Kaleler ve Kuleler'),
      ),
      body: ListView.builder(
        itemCount: kaleListesi.length,
        itemBuilder: (context, index) {
          return Card(
            elevation: 4.0,
            margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => KaleDetaySayfasi(kale: kaleListesi[index]),
                  ),
                );
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Image.asset(
                    'assets/${kaleListesi[index].resimDosyaAdi}',
                    height: 200.0,
                    fit: BoxFit.cover,
                  ),
                  Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                      kaleListesi[index].ad,
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