// lib/screens/parklar_sayfasi.dart
import 'package:flutter/material.dart';
import 'package:izmit/screens/detail/park.dart';

import '../models/park.dart'; // Detay sayfası için gerekli

class ParklarSayfasi extends StatelessWidget {
  final List<Park> parkListesi = [
    Park(
      ad: 'Anıtpark',
      resimDosyaAdi: 'anit.jpg',
    ),
    Park(
      ad: 'Cumhuriyet Parkı',
      resimDosyaAdi: 'cumhuriyet.jpg',
    ),
    Park(ad: "Doğu Kışla Parkı",
        resimDosyaAdi: "dogu.jpg",
    ),
    Park(ad: "Fevziye Parkı",
      resimDosyaAdi: "fevziye_park.jpg",
    ),
    Park(ad: "Kınalı Asker Parkı",
      resimDosyaAdi: "kinali.jpg",
    ),
    Park(ad: "Sabri Yalım Parkı",
      resimDosyaAdi: "sabri.jpeg",
    ),
    Park(ad: "Sekapark",
      resimDosyaAdi: "sekapark.jpg",
    ),
    Park(ad: "Yeni Cuma Parkı",
      resimDosyaAdi: "yeni_park.jpeg",
    ),
    // Diğer parkları ekleyin
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        title: Text('Parklar'),
      ),
      body: ListView.builder(
        itemCount: parkListesi.length,
        itemBuilder: (context, index) {
          return Card(
            elevation: 4.0,
            margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ParkDetaySayfasi(park: parkListesi[index]),
                  ),
                );
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Image.asset(
                    'assets/${parkListesi[index].resimDosyaAdi}',
                    height: 200.0,
                    fit: BoxFit.cover,
                  ),
                  Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                      parkListesi[index].ad,
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