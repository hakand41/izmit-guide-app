import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../models/park.dart';

class ParkDetaySayfasi extends StatelessWidget {
  final Park park;

  ParkDetaySayfasi({required this.park});

  _launchGoogleMaps() async {
    // Google Maps'te parkın adını aratmak için bir URL oluştur
    final String googleMapsUrl = 'https://www.google.com/maps/search/?api=1&query=${Uri.encodeComponent(park.ad)}';


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
        backgroundColor: Colors.lightBlueAccent,
        title: Text(park.ad),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(
              'assets/${park.resimDosyaAdi}',
              height: 300.0,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16,),
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
