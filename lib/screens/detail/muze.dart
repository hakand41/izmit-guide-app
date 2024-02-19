import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../models/muze.dart';

class MuzeDetaySayfasi extends StatelessWidget {
  final Muze muze;

  MuzeDetaySayfasi({required this.muze});

  _launchGoogleMaps() async {
    // Google Maps'te müzenin adını aratmak için bir URL oluştur
    final String googleMapsUrl = 'https://www.google.com/maps/search/?api=1&query=${Uri.encodeComponent(muze.ad)}';

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
        title: Text(muze.ad),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(
              'assets/${muze.resimDosyaAdi}',
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
                muze.aciklama,
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
