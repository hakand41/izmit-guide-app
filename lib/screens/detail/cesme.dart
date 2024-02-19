import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../models/cesme.dart';

class CesmeDetaySayfasi extends StatelessWidget {
  final Cesme cesme;

  CesmeDetaySayfasi({required this.cesme});

  _launchGoogleMaps() async {
    // Google Maps'te çeşmenin adını aratmak için bir URL oluştur
    final String googleMapsUrl = 'https://www.google.com/maps/search/?api=1&query=${Uri.encodeComponent(cesme.ad)}';

    // URL'yi açmak için platform bağımsız bir şekilde url_launcher kütüphanesini kullan
    if (await canLaunch(googleMapsUrl)) {
      await launch(googleMapsUrl);
    } else {
      throw 'Google Maps\'i açarken bir hata oluştu.';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(cesme.ad),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(
              'assets/${cesme.resimDosyaAdi}',
              height: 300.0,
              fit: BoxFit.cover,
            ),
            Container(
              padding: EdgeInsets.all(16.0),
              margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Text(
                cesme.aciklama,
                style: TextStyle(fontSize: 18.0),
              ),
            ),
            ElevatedButton(
              onPressed: _launchGoogleMaps, // Google Maps'i açmak için fonksiyonu çağır
              style: ElevatedButton.styleFrom(
                primary: Colors.blue,
                padding: EdgeInsets.all(16.0),
              ),
              child: Text(
                'Google Maps\'te Göster',
                style: TextStyle(fontSize: 18.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
