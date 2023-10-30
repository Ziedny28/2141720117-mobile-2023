# Praktikum Menerapkan Plugin di Project Flutter

## Langkah 1: Buat Project Baru

Buatlah sebuah project flutter baru dengan nama flutter_plugin_pubdev. Lalu jadikan repository di GitHub Anda dengan nama flutter_plugin_pubdev.

## Langkah 2: Menambahkan Plugin

Tambahkan plugin auto_size_text menggunakan perintah berikut di terminal

```
flutter pub add auto_size_text
```

Jika berhasil, maka akan tampil nama plugin beserta versinya di file pubspec.yaml pada bagian dependencies.

**pubsec.yaml:**
```yaml
dependencies:
  flutter:
    sdk: flutter


  # The following adds the Cupertino Icons font to your application.
  # Use with the CupertinoIcons class for iOS style icons.
  cupertino_icons: ^1.0.2
  auto_size_text: ^3.0.0
``` 

**Penjelasan**

Fungsi dari "flutter pub add auto_size_text" adalah untuk menambahkan package auto_size_text ke proyek Flutter. Setelah command dijalankan auto_size_text akan terdeftar sebagai dependencies pada pubsec.yaml akan   

## Langkah 3: Buat file red_text_widget.dart

Buat file baru bernama red_text_widget.dart di dalam folder lib lalu isi kode seperti berikut.

```dart
import 'package:flutter/material.dart';

class RedTextWidget extends StatelessWidget {
  const RedTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
```

## Langkah 4: Tambah Widget AutoSizeText

Masih di file red_text_widget.dart, untuk menggunakan plugin auto_size_text, ubahlah kode return Container() menjadi seperti berikut.

```dart
return AutoSizeText(
      text,
      style: const TextStyle(color: Colors.red, fontSize: 14),
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
);
```


Setelah Anda menambahkan kode di atas, Anda akan mendapatkan info error. Mengapa demikian? Jelaskan dalam laporan praktikum Anda!

**Jawaban**

error dikarenakan kita belum melakukan import package, dapat dilakukan dengan
```dart
import 'package:auto_size_text/auto_size_text.dart';
```
error lain adalah karena variable text belum dibuat


## Langkah 5: Buat Variabel text dan parameter di constructor
Tambahkan variabel text dan parameter di constructor seperti berikut.
```dart
final String text;

const RedTextWidget({Key? key, required this.text}) : super(key: key);
```

**Penjelasan**

karena pada langkah sebelumnya terdapat penggunaan variable text padahal masih belum terdapat variable text dibuatlah string text yang merupakan variable required ketika class RedTextWidget digunakan

## Langkah 6: Tambahkan widget di main.dart
Buka file main.dart lalu tambahkan di dalam children: pada class _MyHomePageState
```dart

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            color: Colors.yellowAccent,
            width: 50,
            child: const RedTextWidget(
              text: "You've pushed this button this many times",
            ),
          ),
          Container(
            color: Colors.greenAccent,
            width: 100,
            child: const Text(
              "You've pushed this button this many times",
            ),
          ),
        ],
      ),
    );
  }
}


```

Run aplikasi tersebut dengan tekan F5, maka hasilnya akan seperti berikut.

![Alt text](images/auto_size_text.png)

**Penjelasan**

Perbedaan utama antara widget AutoSizeText dan Teks adalah widget AutoSizeText akan secara otomatis mengubah ukuran teksnya agar sesuai dengan batasannya, sementara, widget Teks tidak secara otomatis mengubah ukuran teksnya.kkeuntungan menggunakan widget ini adalah kita akan menampulkan text dengan ukuran yg benar.