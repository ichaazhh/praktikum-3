import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Twitter')),
        body: Stack(
          children: [
            Container(
              width: double.infinity,
              height: 190,
              child: Image.network(
                'assets/header.jpeg',
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              top: 150, 
              left: 20, 
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.white, width: 3),
                ),
                child: const CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('assets/profile.jpeg'),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 200),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 8),
                  ListTile(
                    trailing: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white, backgroundColor: Colors.black, // Text color
                      ),
                      child: const Text('Follow'),
                    ),
                  ),
                  const Padding(
                    padding: const EdgeInsets.fromLTRB(24, 16, 24, 0),
                    child: Text(
                      'UPN Veteran Jawa Timur',
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24, vertical: 4),
                    child: Text(
                      '@upnvjt_official',
                      style: TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    child: Text(
                      'AKUN RESMI UPN “VETERAN” JAWA TIMUR Dikelola oleh Humas UPN “Veteran” Jawa Timur Kampus Bela Negara',
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24, vertical: 4),
                      child: Text(
                        'Translate Bio',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.blue,
                          decoration: TextDecoration.none,
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
