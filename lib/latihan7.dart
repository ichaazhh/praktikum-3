import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplikasi Gojek',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gojek'),
      ),
      body: ListView(
        children: <Widget>[   
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                const Text(
                  'Your favorites',
                  style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Aksi ketika tombol ditekan
                  },
                  child: Text('Edit', style: TextStyle(color: Colors.green)), // Mengubah warna teks
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white, // Warna latar tombol
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20), // Radius sudut
                    ),
                    side: BorderSide(color: Colors.green, width: 2), // Garis tepi
                  ),
                ),
              ],
            ),
          ),
          GridView.count(
            crossAxisCount: 4,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            children: <Widget>[
              ServiceIcon(
                title: 'GoRide',
                image: AssetImage('assets/goride.jpg'), // 
              ),
              ServiceIcon(
                title: 'GoCar',
                image: AssetImage('assets/gocar.jpg'), 
              ),
              ServiceIcon(
                title: 'GoFood',
                image: AssetImage('assets/gofood.jpg'),
              ),
              ServiceIcon(
                title: 'GoSend',
                image: AssetImage('assets/gosend.jpg'),
              ),
              ServiceIcon(
                title: 'GoMart',
                image: AssetImage('assets/gomart.jpg'),
              ),
              ServiceIcon(
                title: 'GoPulsa',
                image: AssetImage('assets/gopulsa.jpg'),
              ),
              ServiceIcon(
                title: 'GoTagihan',
                image: AssetImage('assets/gotagihan.jpg'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ServiceIcon extends StatelessWidget {
  final String title;
  final ImageProvider image;

  ServiceIcon({required this.title, required this.image}); // Perbarui konstruktor

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
