import 'package:flutter/material.dart';
import 'package:izmit/screens/havadurumu.dart';
import 'screens/camiiler_sayfasi.dart';
import 'screens/hamamlar_sayfasi.dart';
import 'screens/parklar_sayfasi.dart';
import 'screens/kaleler_sayfasi.dart';
import 'screens/muzeler_sayfasi.dart';
import 'screens/cesmeler_sayfasi.dart';
import 'services/api_service.dart';


class AnaSayfa extends StatefulWidget {
  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  @override


  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFE0E0E0),
        title: Text(
          "İzmit Rehberi",
          style: TextStyle(color: Colors.cyan),
        ),
        leading: Image.asset(
          'assets/izmit_logo.png',
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.wb_sunny),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return const WeatherScreen();
            },
          ),
        );
      },)
        ],
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/kopru.jpg', // Arka plan resmi
            fit: BoxFit.cover,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              AnaSayfaButonu(
                buttonText: 'Camiiler',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CamiilerSayfasi()),
                  );
                },
              ),
              SizedBox(height: 16.0),
              AnaSayfaButonu(
                buttonText: 'Çeşmeler',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CesmelerSayfasi()),
                  );
                },
              ),
              SizedBox(height: 16.0),
              AnaSayfaButonu(
                buttonText: 'Hamamlar',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HamamlarSayfasi()),
                  );
                },
              ),
              SizedBox(height: 16.0),
              AnaSayfaButonu(
                buttonText: 'Kaleler ve Kuleler',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => KalelerSayfasi()),
                  );
                },
              ),
              SizedBox(height: 16.0),
              AnaSayfaButonu(
                buttonText: 'Müzeler',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MuzelerSayfasi()),
                  );
                },
              ),
              SizedBox(height: 16.0),
              AnaSayfaButonu(
                buttonText: 'Parklar',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ParklarSayfasi()),
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class AnaSayfaButonu extends StatelessWidget {
  final String buttonText;
  final VoidCallback? onPressed;

  AnaSayfaButonu({required this.buttonText, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        primary: Colors.cyan,
        padding: EdgeInsets.all(16.0),
      ),
      child: Text(
        buttonText,
        style: TextStyle(fontSize: 24.0, color: Colors.white),
      ),
    );
  }
}
