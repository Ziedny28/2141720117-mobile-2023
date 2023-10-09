import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'CALL'),
        _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(color, Icons.share, 'SHARE'),
      ],
    );

    return MaterialApp(
      title: 'Flutter Layout: Ziedny Bisma Mubarok, 2141720117',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Layout Demo'),
        ),
        body: ListView(
          children: [
            Image.network(
              '/assets/images/coban-pelangi.jpg',
              width: 600,
              height: 400,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
      ),
    );
  }

  Widget titleSection = Container(
    padding: const EdgeInsets.all(32),
    child: Row(
      children: [
        Expanded(
          // Soal 1
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // soal 2
              Container(
                padding: const EdgeInsets.only(bottom: 1.0),
                child: const Text(
                  'Wisata Coban Pelangi',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Text(
                'Malang, Indonesia',
                style: TextStyle(color: Colors.grey),
              )
            ],
          ),
        ),
        //soal 3
        const Icon(
          Icons.star,
          color: Colors.red,
        ),
        const Text("41"),
      ],
    ),
  );

  Widget textSection = Container(
    padding: const EdgeInsets.all(32),
    child: const Text(
      """ Coban Pelangi adalah lokasi wisata air terjun yang berlokasi di Desa Gubuk Klakah, Kabupaten Malang. Tempat wisata ini dikelola oleh Perum Perhutani KPH Malang. Tersirat ‘pelangi’ pada namanya karena di air terjun ini sering muncul penampakan pelangi. Air terjunnya memiliki ketinggian hingga 110 meter. Lokasi wisata ini dikelilingi oleh Taman Nasional Bromo Tengger Semeru dengan suhu udara mencapai 19 hingga 23 derajat Celsius. Disarankan membawa pakaian hangat atau jaket jika berencana mengunjungi air terjun ini.
      
      """
      'Ziedny Bisma Mubarok, 2141720117 '
      'Minggu 7 ',
      softWrap: true,
    ),
  );

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w800,
              color: color,
            ),
          ),
        )
      ],
    );
  }
}
