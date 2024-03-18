import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Peduli Lindungi'),
          actions: [
            Container(
              margin: EdgeInsets.only(right: 16),
              child: Text(
                'NEW',
                style: TextStyle(color: Colors.orange),
              ),
            ),
          ],
        ),
        body: Center(
          child: CustomCard(),
        ),
      ),
    );
  }
}

class CustomCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 12),
        Card(
          margin: EdgeInsets.only(bottom: 24),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14.0),
          ),
          color: Colors.blue, // Ubah warna latar belakang card menjadi biru
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const ListTile(
                leading: Icon(Icons.info_outline, color: Colors.white, size: 40),
                title: Text(
                  'Entering a public space?',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white), // Ubah warna teks menjadi putih
                ),
                subtitle: Text(
                  'Stay alert to stay safe',
                  style: TextStyle(fontSize: 18, color: Colors.white), // Ubah warna teks menjadi putih
                ),
              ),
              ButtonBar(
                children: [
                  TextButton(
                    onPressed: () {
                      // Handle Check-In Preference button press
                    },
                    child: const Text(
                      'Check-In Preference',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      // Handle Check-in button press
                    },
                    child: const Text(
                      'Check-in',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        GridView.count(
          crossAxisCount: 3,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          children: <Widget>[
            ServiceIcon(
              title: 'COVID-19 Vaccine',
              image: AssetImage('assets/vaccine.jpg'),
            ),
            ServiceIcon(
              title: 'COVID-19 Test Result',
              image: AssetImage('assets/test.jpg'),
            ),
            ServiceIcon(
              title: 'EHAC',
              image: AssetImage('assets/EHAC.jpg'),
            ),
            ServiceIcon(
              title: 'Travel Regulations',
              image: AssetImage('assets/travel.jpg'),
            ),
            ServiceIcon(
              title: 'Telemedicine',
              image: AssetImage('assets/medicine.jpg'),
            ),
            ServiceIcon(
              title: 'Healthcare Facility',
              image: AssetImage('assets/healthcare.jpg'),
            ),
          ],
        ),
      ],
    ); 
  }
}

class ServiceIcon extends StatelessWidget {
  final String title;
  final ImageProvider image;

  ServiceIcon({required this.title, required this.image});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: image,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Text(title),
      ],
    );
  }
}
