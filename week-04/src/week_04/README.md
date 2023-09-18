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
- memberi value dari list tersebut pada ` list[1] = "Nama: Ziedny Bisma Mubarok"; `dan`
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
kemudian value dimasukkan pada  `names2.addAll(nim); `

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

Tambahkan elemen nama dan NIM Anda pada tiap variabel di atas (gifts, nobleGases, mhs1, dan mhs2). Dokumentasikan hasilnya dan buat laporannya!
