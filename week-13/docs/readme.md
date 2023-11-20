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

## Langkah 13: Ganti isi method changeColor()

main.dart:

```dart

class _StreamHomePageState extends State<StreamHomePage> {
  Color bgColor = Colors.blueGrey;
  late ColorStream colorStream;

  @override
  void initState() {
    ...
    changeColor();
  }

  @override
  Widget build(BuildContext context) {
   ...
  }

  void changeColor() async {
    colorStream.getColors().listen((eventColor) {
      setState(() {
        bgColor = eventColor;
      });
    });
  }
}

```

## Soal 5
- Jelaskan perbedaan menggunakan listen dan await for (langkah 9) !
- Lakukan commit hasil jawaban Soal 5 dengan pesan "W13: Jawaban Soal 5"

**Jawaban**

Kode pertama menggunakan loop await for untuk mengulangi colorStream, kode akan menunggu setiap warna diberikan sebelum memperbarui warna latar belakang.

Kode kedua menggunakan metode listen untuk subscibe ke colorStream, kode akan diberitahu setiap kali warna baru diberikan, dan akan memperbarui warna latar belakang sesuai dengan itu. 

# Praktikum 2: Stream controllers dan sinks

## Langkah 1: Buka file stream.dart

stream.dart:

```dart
import 'dart:async';
```

## Langkah 2: Tambah class NumberStream

stream.dart:
```dart
class NumberStream {}
```

## Langkah 3: Tambah StreamController

stream.dart:
```dart
class NumberStream {
  final StreamController<int> controller = StreamController<int>();
}
```

## Langkah 4: Tambah method addNumberToSink

stream.dart:
```dart
class NumberStream {
  final StreamController<int> controller = StreamController<int>();

  void addNumberToSink(int newNumber) {
    controller.sink.add(newNumber);
  }
}
```

## Langkah 5: Tambah method close()

```dart

class NumberStream {
  final StreamController<int> controller = StreamController<int>();

  void addNumberToSink(int newNumber) {
    controller.sink.add(newNumber);
  }

  close() {
    controller.close();
  }
}
```

## Langkah 6: Buka main.dart

main.dart:
```dart
import 'dart:async';
import 'dart:math';
```

## Langkah 7: Tambah variabel

main.dart:

```dart
class _StreamHomePageState extends State<StreamHomePage> {
  Color bgColor = Colors.blueGrey;
  late ColorStream colorStream;

  int lateNumber = 0;
  late StreamController numberStreamController;
  late NumberStream numberStream;
```

## Langkah 8: Edit initState()

main.dart:

```dart

class _StreamHomePageState extends State<StreamHomePage> {
    ...

  int lastNumber = 0;
  late StreamController numberStreamController;
  late NumberStream numberStream;

  @override
  void initState() {
    super.initState();
    // colorStream = ColorStream();
    // changeColor();
    numberStream = NumberStream();
    numberStreamController = numberStream.controller;
    Stream stream = numberStreamController.stream;
    stream.listen((event) {
      setState(() {
        lastNumber = event;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
   ...
  }

  void changeColor() async {
    ...
  }
}

```

##  Langkah 9: Edit dispose()

main.dart:

```dart

class _StreamHomePageState extends State<StreamHomePage> {
  ...
  int lastNumber = 0;
  late StreamController numberStreamController;
  late NumberStream numberStream;

  @override
  void initState() {
    super.initState();
    // colorStream = ColorStream();
    // changeColor();
    numberStream = NumberStream();
    numberStreamController = numberStream.controller;
    Stream stream = numberStreamController.stream;
    stream.listen((event) {
      setState(() {
        lastNumber = event;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
   ...
  }

  void changeColor() async {
   ...
  }

  @override
  void dispose() {
    numberStreamController.close();
    super.dispose();
  }
}
```

## Langkah 10: Tambah method addRandomNumber()

main.dart:

```dart
void addRandomNumber() {
  Random random = Random();
  int myNum = random.nextInt(10);
  numberStream.addNumberToSink(myNum);
}
```

## Langkah 11: Edit method build()


```dart

class _StreamHomePageState extends State<StreamHomePage> {
  ...

  @override
  void initState() {
   ...
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Strem Ziedny'),
        ),
        body: SizedBox(
          width: double.infinity,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(lastNumber.toString()),
                ElevatedButton(
                  onPressed: () => addRandomNumber(),
                  child: const Text("New Random Number"),
                )
              ]),
        ));
  }

  void changeColor() async {
   ...
  }

  @override
  void dispose() {
  ...
  }

  void addRandomNumber() {
  ...
  }
}

```

## Langkah 12: Run

![](imgs/prak2.gif)

## Soal 6
- Jelaskan maksud kode langkah 8 dan 10 tersebut!
- Capture hasil praktikum Anda berupa GIF dan lampirkan di README.
- Lalu lakukan commit dengan pesan "W13: Jawaban Soal 6".

**jawaban**

yang terjadi adalah kita membuat instance dari NumberStream sehingga dapat menggunakan fungsi dan variable di dalamnya pada fungsi initState, kemudian pada void dispose dilakukan close

## Langkah 13: Buka stream.dart

stream.dart:

```dart
class NumberStream {
  ...

  addError() {
    controller.sink.addError('error');
  }
}

```

## Langkah 14: Buka main.dart

main.dart:

```dart
  @override
  void initState() {
    super.initState();
    // colorStream = ColorStream();
    // changeColor();
    numberStream = NumberStream();
    numberStreamController = numberStream.controller;
    Stream stream = numberStreamController.stream;
    stream.listen((event) {
      setState(() {
        lastNumber = event;
      });
    }).onError((error) {
      setState(() {
        lastNumber = -1;
      });
    });
  }
```

## Langkah 15: Edit method addRandomNumber()

main.dart:

```dart
 void addRandomNumber() {
    Random random = Random();
    // int myNum = random.nextInt(10);
    // numberStream.addNumberToSink(myNum);

    numberStream.addError();
  }
```

## Soal 7
- Jelaskan maksud kode langkah 13 sampai 15 tersebut!
- Kembalikan kode seperti semula pada Langkah 15, comment addError() agar Anda dapat melanjutkan ke praktikum 3 berikutnya.
- Lalu lakukan commit dengan pesan "W13: Jawaban Soal 7".

**Jawaban**

kita sengaja melakukan error pada addRandomNumber ketika di klik, akan error dan dijalankan oleh onError yang akan membuat angka -1 ditampilkan 