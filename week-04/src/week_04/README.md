# Pengantar Bahasa Pemrograman Dart - Bagian 4

## Praktikum 1: Eksperimen Tipe Data List

### Langkah 1

Ketik atau salin kode program berikut ke dalam `void` `main()`.

![image](https://raw.githubusercontent.com/Ziedny28/2141720117-mobile-2023/main/week-04/docs/images/prak-1-langkah-1.png)

### Langkah 2

Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan!

**jawaban**

Yang terjadi adalah:

- membuat list yang berisi 3 value integer, yakni 1,2,3 pada `var list = [1,2,3]`
- melakukan debugging menggunakan fungsi `assert()` untuk mengecek apakah panjang dari list tersebut adalah 3 pada `assert(list.length == 3);` dan apakah nilai pada index pertama adalah 2 pada `assert(list[1] == 2);`.

- Setelah itu mengubah nilai pada list index pertama dengan 1 pada `list[i]=1;`

### Langkah 3

Ubah kode pada langkah 1 menjadi variabel final yang mempunyai index = 5 dengan default value = null. Isilah nama dan NIM Anda pada elemen index ke-1 dan ke-2. Lalu print dan capture hasilnya.

Apa yang terjadi ? Jika terjadi error, silakan perbaiki.

**Jawaban**

![image](https://raw.githubusercontent.com/Ziedny28/2141720117-mobile-2023/main/week-04/docs/images/prak-1-langkah-3.png)

- pertama membuat list pada `final list = List.filled(5,null);`
- memberi value dari list tersebut pada `list[1] = "Nama: Ziedny Bisma Mubarok";`dan`
list[2] = "Nim: 2141720117";`

namun akan muncul error yakni nilai defaultnya adalah null, dan karena ini variable final maka tipe data tidak dapat diubah, sehingga menimbulkan error, solusinya adalah mengganti nilai default menjadi string kosong

![image](https://raw.githubusercontent.com/Ziedny28/2141720117-mobile-2023/main/week-04/docs/images/prak-1-langkah-3-2.png)

## Praktikum 2: Eksperimen Tipe Data Set

### Langkah 1

Ketik atau salin kode program berikut ke dalam fungsi `main()`.

![image](https://raw.githubusercontent.com/Ziedny28/2141720117-mobile-2023/main/week-04/docs/images/prak-2-langkah-1.png)

### Langkah 2

Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan! Lalu perbaiki jika terjadi error.

**Jawaban**

yang terjadi adalah kita membuat variable data set pada `var halogens = {'fluorine', 'chlorine', 'bromine','iodine', 'astatine'};` dan mencetaknya

### Langkah 3

Tambahkan kode program berikut, lalu coba eksekusi (Run) kode Anda.

![image](https://raw.githubusercontent.com/Ziedny28/2141720117-mobile-2023/main/week-04/docs/images/prak-2-langkah-3.png)

Apa yang terjadi ? Jika terjadi error, silakan perbaiki namun tetap menggunakan ketiga variabel tersebut.

**Jawaban**

kita memnbuat set `halogens` caranya adalah dengan `{}` kemudian mencetaknya

Tambahkan elemen nama dan NIM Anda pada kedua variabel Set tersebut dengan dua fungsi berbeda yaitu `.add()` dan `.addAll()`. Untuk variabel Map dihapus, nanti kita coba di praktikum selanjutnya.

**Jawaban**

![image](https://raw.githubusercontent.com/Ziedny28/2141720117-mobile-2023/main/week-04/docs/images/prak-2-langkah-3-1.png)

pada variable `names1` dilakukan penambahan value pada `names1.add("Nama: Ziedny Bisma Mubarok");` yang merupakan nama, dan pada variable names 2, value diberikan dengan variable `final nim = {"Nim: 2141720117"};`
kemudian value dimasukkan pada `names2.addAll(nim); `

## Praktikum 3: Eksperimen Tipe Data Maps

### Langkah 1

Ketik atau salin kode program berikut ke dalam fungsi main().

![image](https://raw.githubusercontent.com/Ziedny28/2141720117-mobile-2023/main/week-04/docs/images/prak-3-langkah-1.png)

### Langkah 2

Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan! Lalu perbaiki jika terjadi error.

**Jawaban**

kita membuat variable map `gifts` dan `nobleGases` yang meripakan key value pair

### Langkah 3

Tambahkan kode program berikut, lalu coba eksekusi (Run) kode Anda.

![image](https://raw.githubusercontent.com/Ziedny28/2141720117-mobile-2023/main/week-04/docs/images/prak-3-langkah-3.png)

Apa yang terjadi ? Jika terjadi error, silakan perbaiki.

**Jawaban**

kita membuat variable map bernama mhs1 dengan tipe data string string dan mhs2 dengan tipe data int string.
selain itu kita juga memberi value pada variable gifts yang merupakan map dengan tipe data string string dan nobleGlass dengan tipe data int string.

Tambahkan elemen nama dan NIM Anda pada tiap variabel di atas (gifts, nobleGases, mhs1, dan mhs2). Dokumentasikan hasilnya dan buat laporannya!

**Jawaban**
![image](https://raw.githubusercontent.com/Ziedny28/2141720117-mobile-2023/main/week-04/docs/images/prak-3-langkah-3-2.png)

## Praktikum 4: Eksperimen Tipe Data List: Spread dan Control-flow Operators

### Langkah 1

Ketik atau salin kode program berikut ke dalam fungsi main().

![image](https://raw.githubusercontent.com/Ziedny28/2141720117-mobile-2023/main/week-04/docs/images/prak-4-langkah-1.png)

### Langkah 2

Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan! Lalu perbaiki jika terjadi error.

**Jawaban**
akan terjadi error, karena perbedaan nama variable yang dibuat dan diprint, solusinya adalah menyamakan nama varible. Yang terjadi adalah kita memberikan value pada list 2 menggunakan spread operator hal ini karenakn kita memberikan value list dengan list lain yang jika dilakukan tanpa menggunakan spread operator akan membuat valuenya list didalam list.

![image](https://raw.githubusercontent.com/Ziedny28/2141720117-mobile-2023/main/week-04/docs/images/prak-4-langkah-1-1.png)

### Langkah 3

Tambahkan kode program berikut, lalu coba eksekusi (Run) kode Anda.

![image](https://raw.githubusercontent.com/Ziedny28/2141720117-mobile-2023/main/week-04/docs/images/prak-4-langkah-3.png)

**jawaban**

akan terjadi error, hal ini dikarenakan terdapat nilai null pada list. solusinya adalah dengan menghapus nilai null

![image](https://raw.githubusercontent.com/Ziedny28/2141720117-mobile-2023/main/week-04/docs/images/prak-4-langkah-3-1.png)

akan muncul warning, hal ini dikarenakan kita menggunakan ? setelah spread operator yang membuatnya opsional, namun list1 sudah pasti memiliki nilai

### Langkah 4

Tambahkan kode program berikut, lalu coba eksekusi (Run) kode Anda.

![image](https://raw.githubusercontent.com/Ziedny28/2141720117-mobile-2023/main/week-04/docs/images/prak-4-langkah-4.png)

Apa yang terjadi ? Jika terjadi error, silakan perbaiki. Tunjukkan hasilnya jika variabel promoActive ketika true dan false.

**Jawaban**

yang terjadi adalah kita bisa memberikan if statement, yang jika bernilai true, value list pada indeks tersebut akan muncul

![image](https://raw.githubusercontent.com/Ziedny28/2141720117-mobile-2023/main/week-04/docs/images/prak-4-langkah-4-1.png)

### Langkah 5

Tambahkan kode program berikut, lalu coba eksekusi (Run) kode Anda.

![image](https://raw.githubusercontent.com/Ziedny28/2141720117-mobile-2023/main/week-04/docs/images/prak-4-langkah-5.png)

Apa yang terjadi ? Jika terjadi error, silakan perbaiki. Tunjukkan hasilnya jika variabel login mempunyai kondisi lain.

![image](https://raw.githubusercontent.com/Ziedny28/2141720117-mobile-2023/main/week-04/docs/images/prak-4-langkah-5-1.png)

**Jawaban**

kurang lebih sama seperti yang sebelumnya, jika suatu kondisi bernilai true, value list pada indeks tersebut akan muncul, disini jika `login == 'manager'` Inventory akan muncul pada list tersebut, namun pada gambar selanjutnya dapat dilihat jika `login == 'User'` Inventory tidak akan muncul

### Langkah 6

Tambahkan kode program berikut, lalu coba eksekusi (Run) kode Anda.

![image](https://raw.githubusercontent.com/Ziedny28/2141720117-mobile-2023/main/week-04/docs/images/prak-4-langkah-6.png)

Apa yang terjadi ? Jika terjadi error, silakan perbaiki. Jelaskan manfaat Collection For dan dokumentasikan hasilnya.

**Jawaban**

Yang terjadi adalah kita dapat melakukan loop yang akan membrikan nilai pada list, disini dapat dilihat pada `for(var i in listOfInts) '#$i' ` disini loop ditentukan nilai dari variable `listOfInts` yang mana nilainya adalah 1,2 dan 3, yang membuatnya dijalankan 3 kali, menambah nilai pada listnya dengan #1, #2, dan #3

## Praktikum 5: Eksperimen Tipe Data Records

### Langkah 1

Ketik atau salin kode program berikut ke dalam fungsi main().

![image](https://raw.githubusercontent.com/Ziedny28/2141720117-mobile-2023/main/week-04/docs/images/prak-5-langkah-1.png)

### Langkah 2

Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan! Lalu perbaiki jika terjadi error.

**Jawaban**

Yang terjadi adalah kita membuat variable Record dengan () yang merupakan immutable, Seperti tipe koleksi lainnya, record memungkinkan menggabungkan beberapa objek menjadi satu objek. Tidak seperti tipe koleksi lainnya, record merupakan fixed-size, heterogen, dan typed.

Record dapat menyimpan variabel, nest variable, pass ke atau dari fungsi, dan menyimpannya dalam struktur data seperti list, map, dan set.

### Langkah 3

Tambahkan kode program berikut di luar scope void main(), lalu coba eksekusi (Run) kode Anda.

![image](https://raw.githubusercontent.com/Ziedny28/2141720117-mobile-2023/main/week-04/docs/images/prak-5-langkah-3.png)

Apa yang terjadi ? Jika terjadi error, silakan perbaiki. Gunakan fungsi tukar() di dalam main() sehingga tampak jelas proses pertukaran value field di dalam Records.

**Jawaban**

![image](https://raw.githubusercontent.com/Ziedny28/2141720117-mobile-2023/main/week-04/docs/images/prak-5-langkah-3-1.png)

yang terjadi adalah kita membuat tukar yang dapat menukar nilai, tukar membutuhkan argumen berupa record, yang memiliki dua nilai integer, yang kemudian dikembalikan nilainya dibalik .

pada fungsi main, saya membuat variable record bernilai 1 dan 2 pada `var recordNum = (1,2);` kemudian memanggil tukar pada `recordNum = tukar(recordNum);` dan menukarnya

### Langkah 4

Tambahkan kode program berikut di dalam scope void main(), lalu coba eksekusi (Run) kode Anda.

![image](https://raw.githubusercontent.com/Ziedny28/2141720117-mobile-2023/main/week-04/docs/images/prak-5-langkah-4.png)

Apa yang terjadi ? Jika terjadi error, silakan perbaiki. Inisialisasi field nama dan NIM Anda pada variabel record mahasiswa di atas. Dokumentasikan hasilnya dan buat laporannya!

**Jawaban**

![image](https://raw.githubusercontent.com/Ziedny28/2141720117-mobile-2023/main/week-04/docs/images/prak-5-langkah-4-1.png)

yang terjadi adalah kita membuat record dengan tipe data String dan intege, kemudian sebelumnya terjadi error karena valuenya masih null, solusinya adalah diberikan value, pada `mahasiswa = ("Ziedny Bisma Mubarok", 2141720117);`


### Langkah 5

Tambahkan kode program berikut di dalam scope void main(), lalu coba eksekusi (Run) kode Anda.

![image](https://raw.githubusercontent.com/Ziedny28/2141720117-mobile-2023/main/week-04/docs/images/prak-5-langkah-5.png)


Apa yang terjadi ? Jika terjadi error, silakan perbaiki. Gantilah salah satu isi record dengan nama dan NIM Anda, lalu dokumentasikan hasilnya dan buat laporannya!

**Jawaban**

![image](https://raw.githubusercontent.com/Ziedny28/2141720117-mobile-2023/main/week-04/docs/images/prak-5-langkah-5-1.png)

yang terjadi adalah kita membuat record, dan disini adalah bagaimana kita dapat mengakses suatu value record, 

kemudian nilai diubah dengan nim dan nama

kemudian


## Tugas Praktikum

1. Silakan selesaikan Praktikum 1 sampai 5, lalu dokumentasikan berupa screenshot hasil pekerjaan Anda beserta penjelasannya!

2. Jelaskan yang dimaksud Functions dalam bahasa Dart!

**Jawaban**

Dart merupakan object-oriented language, jadi functions adalah objek dan memiliki tipe, artinya functions dapat di assigned pada suatu varible atau dapat di pass sebagai argumen pada functions lain.
Function sendiri adalah baris kode yang dapat digunakan berulang kali dengan dipanggil. Function dapat memiliki parameter atau argumen, sebuah nilai yang diberikan agar fungsi dapat melakukan tugasnya memanfaatkan nilai tersebut.
Pada dart, parameter terbagi menjadi beberapa jenis, seperti
Named parameters, Optional Positional parameter.
Pada dart terdapat juga function `main()` yang merupakan entry point atau titik masuk aplikasi, fungsi ini mengembalikan `void` dan memiliki parameter `List<String>` opsional.

3. Jelaskan jenis-jenis parameter di Functions beserta contoh sintaksnya!

**Jawaban**

- **Named Parameter**

named parameter dapat menjadi optional maupun required,

```dart
void example({bool? firstParameter, bool? secondParameter}){}
```

kita dapat memanggil fungsi, kita dapat menentukan nama dari argumen seperti berikut

```dart
example(firstParameter: true, secondParameter: true);
```

Untuk menentukan nilai default untuk parameter bernama selain null, gunakan = untuk menentukan nilai default. Nilai yang ditentukan harus berupa konstanta waktu kompilasi. Misalnya:

```dart
void example({bool firstParameter = false, bool secondParameter = false}){}

//call function
example(firstParameter: true)
```

jika named parameter wajib ada gunakan keyword required

```dart
void example({required int firstParameter}){}
```

- **Optional Positional Parameter**

wrap parameter dengan [] akan membuatnya opsional, jika tidak terdapat default value, maka default value akan dianggap null.

```dart
  void example(String param1, [String? param2]){}
```

untuk memberi default value untuk optional parameter yang tidak null gunakan = untuk memberikan default value, nilainya harus constant ketika dicompile

```dart
  void example(String param1, [String param2 = 'param2']){}
```

4. Jelaskan maksud Functions sebagai first-class objects beserta contoh sintaknya!

**Jawaban**

First-class berarti bahwa fungsi dianggap sebagai objek yang dapat dioperasikan seperti objek lainnya dalam bahasa pemrograman. jadi, kita dapat menggunakn function seperti variable mislanya menggunakan function sebagai argumen untuk parameter ketika function dipanggil

contohnya:

```dart

  int tambah(int x, int y) {
  return x + y;
}

int jalankanOperasi(Function operation, int x, int y) {
  return operation(x, y);
}

void main(){
int hasil = jalankanOperasi(tambah, 5, 3);

print(hasil);  // Output: 8
}
```

5. Apa itu Anonymous Functions? Jelaskan dan berikan contohnya!

**Jawaban**

Fungsi anonim (anonymous function), yang juga dikenal sebagai lambda function, adalah fungsi yang tidak memiliki nama. Di Dart, fungsi anonim dibuat dengan menggunakan sintaksis seperti berikut.

```dart
(parameters) {
  
}
```

 Fungsi anonim ini sering digunakan saat  mengirim fungsi sebagai argumen ke fungsi lain atau mengembalikan fungsi dari fungsi lain. contohnya adalah sebagai berikut:

 ```dart  
 void jalankanOperasi(int x, int y, Function operasi) {
  int hasil = operasi(x, y);
  print("hasil: $hasil");
}

void main() {
  // Menggunakan fungsi anonim sebagai argumen
  jalankanOperasi(5, 3, (a, b) {
    return a + b;
  });
}
 ```

6. Jelaskan perbedaan Lexical scope dan Lexical closures! Berikan contohnya!

- Lexical scope adalah mekanisme yang menentukan ketersediaan variabel dalam program. Dalam Dart, lexical scope ditentukan oleh lokasi deklarasi variabel dalam source code. Variabel yang dideklarasikan dalam suatu blok kode hanya dapat diakses dalam blok kode tersebut.

- Lexical closures adalah fungsi yang memiliki akses ke variabel dari lingkup leksikalnya, bahkan setelah lingkup eksternalnya dihapus. Dalam Dart, lexical closures dapat dibuat dengan menggunakan fungsi anonim atau fungsi dengan nama.


7. Jelaskan dengan contoh cara membuat return multiple value di Functions!

Kumpulkan berupa link commit repo GitHub pada tautan yang telah disediakan di grup Telegram!
