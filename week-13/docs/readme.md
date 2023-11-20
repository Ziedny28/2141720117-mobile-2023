# Praktikum 1: Dart Streams

## Langkah 1: Buat Project Baru

## Langkah 2: Buka file main.dart

main.dart:
```dart
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stream',
      theme: ThemeData(primarySwatch: Colors.purple),
      home: const StreamHomePage(),
    );
  }
}

class StreamHomePage extends StatefulWidget {
  const StreamHomePage({super.key});

  @override
  State<StreamHomePage> createState() => _StreamHomePageState();
}

class _StreamHomePageState extends State<StreamHomePage> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

```

## Soal 1

- Tambahkan nama panggilan Anda pada title app sebagai identitas hasil pekerjaan Anda.
- Gantilah warna tema aplikasi sesuai kesukaan Anda.
- Lakukan commit hasil jawaban Soal 1 dengan pesan "W13: Jawaban Soal 1"

## Langkah 3: Buat file baru stream.dart

stream.dart:
```dart
import 'package:flutter/material.dart';

class ColorStream {

}
```

## Langkah 4: Tambah variabel colors

stream.dart:
```dart
class ColorStream {
  final List<Color> colors = [
    Colors.blueGrey,
    Colors.amber,
    Colors.deepPurple,
    Colors.lightBlue,
    Colors.teal,
  ];
}
```

## Soal 2
- Tambahkan 5 warna lainnya sesuai keinginan Anda pada variabel colors tersebut.
- Lakukan commit hasil jawaban Soal 2 dengan pesan "W13: Jawaban Soal 2"

## Langkah 5: Tambah method getColors()

stream.dart:
```dart
  Stream<Color> getColors() async* {}
```

## Langkah 6: Tambah perintah yield*

stream.dart:
```dart
 Stream<Color> getColors() async* {
    yield* Stream.periodic(
      const Duration(seconds: 1),
      (int t) {
        int index = t % colors.length;
        return colors[index];
      },
    );
  }
```
## Soal 3
- Jelaskan fungsi keyword yield* pada kode tersebut!
- Apa maksud isi perintah kode tersebut?
- Lakukan commit hasil jawaban Soal 3 dengan pesan "W13: Jawaban Soal 3"

**Jawaban**

Keyword yield* pada kode tersebut digunakan untuk menghasilkan nilai dari stream lain. Dalam kasus ini, nilai yang dihasilkan adalah nilai dari stream Stream.periodic(). Stream Stream.periodic() akan menghasilkan nilai baru setiap detik.

## Langkah 7: Buka main.dart

main.dart:
```dart
import 'stream.dart';
```

## Langkah 8: Tambah variabel

main.dart
```dart
class _StreamHomePageState extends State<StreamHomePage> {
  Color bgColor = Colors.blueGrey;
  late ColorStream colorStream;
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
```

## Langkah 9: Tambah method changeColor()

main.dart

```dart

class _StreamHomePageState extends State<StreamHomePage> {
  Color bgColor = Colors.blueGrey;
  late ColorStream colorStream;
  @override
  Widget build(BuildContext context) {
    return Container();
  }

  void changeColor() async {
    await for (var eventColor in colorStream.getColors()) {
      setState(() {
        bgColor = eventColor;
      });
    }
  }
}

```

## Langkah 10: Lakukan override initState()

main.dart

```dart
class StreamHomePage extends StatefulWidget {
  const StreamHomePage({super.key});

  @override
  State<StreamHomePage> createState() => _StreamHomePageState();
}

class _StreamHomePageState extends State<StreamHomePage> {
  Color bgColor = Colors.blueGrey;
  late ColorStream colorStream;

  @override
  void initState() {
    super.initState();
    colorStream = ColorStream();
    changeColor();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }

  void changeColor() async {
    await for (var eventColor in colorStream.getColors()) {
      setState(() {
        bgColor = eventColor;
      });
    }
  }
}
```

## Langkah 11: Ubah isi Scaffold()

main.dart

```dart
class _StreamHomePageState extends State<StreamHomePage> {
  Color bgColor = Colors.blueGrey;
  late ColorStream colorStream;

  @override
  void initState() {
  ...
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Strem'),
      ),
      body: Container(
        decoration: BoxDecoration(color: bgColor),
      ),
    );
  }

  void changeColor() async {
    ...
  }
}
```

## Langkah 12: Run

## Soal 4
- Capture hasil praktikum Anda berupa GIF dan lampirkan di README.
- Lakukan commit hasil jawaban Soal 4 dengan pesan "W13: Jawaban Soal 4"

![](imgs/prak%201.gif)

