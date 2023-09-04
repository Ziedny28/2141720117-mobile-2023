# Soal 1
Modifikasilah kode pada baris 3 di VS Code atau Editor Code favorit Anda berikut ini agar mendapatkan keluaran (output) sesuai yang diminta!

## jawaban
![Jawaban](https://raw.githubusercontent.com/Ziedny28/2141720117-mobile-2023/main/week-02/docs/images/Screenshot%202023-09-04%20115313.png)


# Soal 2
Mengapa sangat penting untuk memahami bahasa pemrograman Dart sebelum kita menggunakan framework *Flutter* ? **Jelaskan**!

Karena basis dari framework flutter adalah bahasa pemrograman dart, dengan memahami dart, kita akan lebih familiar dengan sintaks yang dibutuhkan pada flutter, kita juga dapat memahami fitur apa saja yang dapat digunakan untuk mengoptimalkan aplikasi flutter kita. Untuk membuat aplikasi flutter yang lebih interaktif, kita harus dapat mengelola state dengan dart. Selain itu juga akan memudahkan debugging dari pesan kesalahan yang dihasilkan oleh Dart. 

# Soal 3
Rangkumlah materi dari codelab ini menjadi poin-poin penting yang dapat Anda gunakan untuk membantu proses pengembangan aplikasi mobile menggunakan framework Flutter.


## Rangkuman
Dart merupakan dasar dari framework Flutter. Framework modern membutuhkan bahasa modern tingkat tinggi agar memudahkan proses pengembangan, memberikan kenyamanan, dan memungkinkan untuk membuat aplikasi mobile yang imersiv. Memahami Dart adalah dasar untuk bekerja dengan Flutter pengembang perlu, memahami bagaimana cara menggunakannya, kelebihannya, dan yang menjadikan dart bahasa pemrograman yang dipilih untuk Flutter.  

### Kelebihan Dart

- Productive tooling: tool untuk analisa kode, plugin IDE, dan ekosistem

- Garbage collection: untuk mengelola atau menangani dealokasi memori 

- Type annotations

- Statically typed: tipe variable dideklarasikan

- Portability: dapat dikompilasi secara native ke kode Advanced RISC Machines (ARM), web dan x86.


### Evolusi Dart
Diluncurkan pada tahun 2011 dengan versi stabil pada 2013, dart terus mengalamai update hingga rilis Dart 2.0 menjelang akhir 2018, yang dapat diuraikan sebagai berikut:

- awalnya mencoba memecahkan masalah javascript, kini berfokus menjadi tool mobile

- Menawarkan performa terbaik dan alat yang lebih baik untuk proyek berskala besar

- Dibentuk agar kuat dan fleksibel dengan type annotations dan oop yang menyediakan ketangguhan dan fleksibilitas.

Dart adalah bahasa modern yang  mendukung lintas platform, dan memiliki tujuan umum dengan terus meningkatkan fitur-fiturnya, membuatnya lebih update dan fleksibel yang membuatnya dipilih oleh developer framework Flutter.

### Cara Kerja Dart

Dart dapat bekerjad pada lingkungan yang mendukung (dart runtime systems, Dart core libraries, dan garbage collectors). Kode Dart dapat dieksekusi dalam dua mode, yaitu kompilasi Just-In-Time (JIT) dan kompilasi Ahead-Of-Time (AOT). JIT digunakan selama pengembangan untuk fitur seperti debugging dan hot reload, sedangkan AOT digunakan untuk performa yang lebih tinggi pada aplikasi yang sudah jadi.

Dart juga berperan penting dalam fitur  hot reload Flutter, yang memungkinkan  melakukan perubahan kode dengan cepat dan mendapatkan feedback instan. Ini memfasilitasi proses pengembangan yang lebih cepat.

### Struktur

Dalam bahasa pemrograman Dart, sintaksisnya mirip dengan bahasa lain seperti C atau JavaScript, yang membuatnya lebih mudah digunakan. Dart menyediakan operator standar untuk memanipulasi variabel dan memiliki tipe data bawaan yang umum ditemui dalam bahasa pemrograman high level. Control flow dan function di Dart juga mirip dengan bahasa pemrograman lain.

Selain itu, Dart adalah bahasa yang object-oriented. Objek-objek ini dibuat dari blueprint yang disebut class, yang mendefinisikan fields dan methods yang akan dimiliki oleh objek tersebut. Dart mendukung konsep-konsep dasar dalam oop seperti encapsulation, inheritance, composition, abstraction, dan polymorphism.

### Dart Operators

Ketika operator seperti x == y dijalankan, seolah-olah 
x.==(y) dijalankan, yang tujuannya adalah perbandingan kesetaraan. Artinya Operator dapat diganti sesuai logika yang Anda inginkan.

### Arithmetic Operators

anyak operator typical yang bekerja seperti banyak bahasa pemrograman lainnya seperti +,-,*,/,-/(untuk bilangan bulat),% dengan shortcut seperti +=, -=

### Increment and decrement operators

- ++angka akan menambah 1 pada variable angka

- --angka akan mengurangi 1 pada variable angka

### Equality and relational operators

kurang lebih sama seperti dengan bahasa pemrograman lain, namun tidak seperti javascript yang memiliki operator === karena telah memiliki fitur type safety yang memastikan bahwa operator persamaan == hanya digunakan pada objek dengan tipe yang sama.

### Logical operators

Operator logika pada Dart adalah operan bool, bisa berupa variabel, ekspresi, kondisi. Selain itu, dapat dikombinasikan dengan ekspresi kompleks dengan menggabungkan nilai ekspresi yang dievaluasi. misalnya !boolean, ||, dan &&.

### Hello World Dart

kode untuk hello world pada dart adalah sebagai berikut

```dart
void main() {
   for (int i = 0; i < 5; i++) { 
     print('hello ${i + 1}'); 
   } 
}
```
### Main function

Dart menggunakan function dan method sebagai cara untuk memisahkan kode. dari fungsi diatas diketahui bahwa:

- tipe data yang dikembalikan perlu didefinisikan, jika fungsi berupa void, maka fungsi tidak mengembalikan data.
- fungsi main adalah fungsi yang dicari oleh Dart ketika kode pertama kali dieksekusi
- tanda kurung () merupakan parameter yang diterima oleh fungsi
- kurung kurawal {} menandai diamana fungsi dimulai dan diakhiri
