import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            flexibleSpace: Container( // Container untuk menyimpan TabBar
              color: Colors.blue, // Warna latar belakang container
              child: const TabBar(
                indicator: UnderlineTabIndicator( // Sliding warna putih di bawah tab bar
                  borderSide: BorderSide(width: 4.0, color: Colors.white),
                ),
                indicatorColor: Colors.transparent, // Hilangkan garis bawah tab
                labelColor: Colors.white, // Warna teks tab yang aktif
                unselectedLabelColor: Colors.white, // Warna teks tab yang tidak aktif
                tabs: [
                  Tab(text: 'For You'),
                  Tab(text: 'Following'),
                ],
              ),
            ),
          ),
          body: TabBarView(
            children: [
              ForYouTab(),
              FollowingTab(),
            ],
          ),
        ),
      ),
    );
  }
}








class ForYouTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 20,
      itemBuilder: (context, index) {
        return ListTile(
          leading: FlutterLogo(size: 40),
          title: Text('Item $index'),
          subtitle: Text('For You'),
        );
      },
    );
  }
}

class FollowingTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 32.0,
        mainAxisSpacing: 8.0,
      ),
      itemCount: 4,
      itemBuilder: (context, index) {
        return Container(
          decoration: BoxDecoration(
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(24, 16, 24, 0),// Tambahkan padding di sini
            child: Image.asset('assets/profile.jpeg'),
          ),
        );
      },
    );
  }
}

