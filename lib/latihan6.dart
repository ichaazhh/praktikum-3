import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ListView',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  // Data berisi daftar nama, hobi, dan URL foto
  final List<Map<String, String>> data = [
    {
      'nama': 'Nurul Izzah',
      'hobi': 'Membaca',
      'foto': 'https://asset.kompas.com/crops/qvQGS1vgF8FY7k9ylFHkmPd5l-Q=/0x0:0x0/750x500/data/photo/buku/61d440096969e.jpg',
    },
    {
      'nama': 'Raihana Sakhi',
      'hobi': 'Menulis',
      'foto': 'https://media.suara.com/pictures/653x366/2022/11/06/27140-open-minded-freepik.jpg',
    },
    {
      'nama': 'Pipit Fidyah',
      'hobi': 'Berkebun',
      'foto': 'https://media.suara.com/pictures/653x366/2020/05/19/85585-ilustrasi-berkebun.jpg',
    },
    {
      'nama': 'Marisca Amanda',
      'hobi': 'Memasak',
      'foto': 'https://static.promediateknologi.id/crop/0x0:0x0/750x500/webp/photo/2023/07/05/pexels-karolina-grabowska-8528741-2093072467.jpg',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Daftar Hobi Member:'),
      ),
      body: ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, index) {
          // Mendapatkan data dari list berdasarkan index
          final person = data[index];
          // Membuat card untuk setiap item
          return Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(person['foto']!),
              ),
              title: Text(person['nama']!),
              subtitle: Text(person['hobi']!),
            ),
          );
        },
      ),
    );
  }
}
