# Pengantar Bahasa Pemrograman Dart - Bagian 3

## Praktikum 1: Menerapkan Control Flows ("if/else")
Selesaikan langkah-langkah praktikum berikut ini menggunakan DartPad di browser Anda.

### Langkah 1

Langkah 1:
Ketik atau salin kode program berikut ke dalam fungsi main().

**Jawaban**

![Jawaban](https://raw.githubusercontent.com/Ziedny28/2141720117-mobile-2023/main/week-03/docs/Images/prak-1-langkah-1.png) 

### Langkah 2

Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan!

**Jawaban**

Yang terjadi adalah kita mencetak Test2 dan Test2 again, hal ini dikarenakan nilai dari variable test adalah “test2” yang membuat nilai else if yang akan menjalankan baris kode untuk mencetak Test2 dan if yang  akan menjalankan baris kode untuk mencetak Test2 again bernilai true


### Langkah 3

Tambahkan kode program berikut, lalu coba eksekusi (Run) kode Anda.

![Jawaban](https://raw.githubusercontent.com/Ziedny28/2141720117-mobile-2023/main/week-03/docs/Images/prak-1-langkah-3.png) 

Apa yang terjadi ? Jika terjadi error, silakan perbaiki namun tetap menggunakan if/else.

**Jawaban**

Yang terjadi adalah error karena variable bernama test sudah ada dideklarasi diatas, hal ini dapat diatasi dengan menghapus baris kode sebelumnya, atau membuat file baru, disini saya membuat file baru

![Jawaban](https://raw.githubusercontent.com/Ziedny28/2141720117-mobile-2023/main/week-03/docs/Images/prak-1-langkah-3-02.png) 

namun akan terjadi error lain yang disebebkan karena variable test memiliki tipe data string dan bukan boolean, solusinya adalah dengan mengubah tipe data dan valuenya tanpa ""

![Jawaban](https://raw.githubusercontent.com/Ziedny28/2141720117-mobile-2023/main/week-03/docs/Images/prak-1-langkah-3-03.png) 

penjelasan kode: karena test bernilai true, maka if statement akan dijalankan dan kebenaran akan dicetak

## Praktikum 2: Menerapkan Perulangan "while" dan "do-while"

Selesaikan langkah-langkah praktikum berikut ini menggunakan DartPad di browser Anda.

### Langkah 1:
Ketik atau salin kode program berikut ke dalam fungsi main().

![Jawaban](https://raw.githubusercontent.com/Ziedny28/2141720117-mobile-2023/main/week-03/docs/Images/prak-2-langkah-1.png) 

### Langkah 2:
Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan! Lalu perbaiki jika terjadi error.

**Jawaban**
Terdapat error, hal ini dikarenakan kita belum melakukan deklarasi dan inisialisasi untuk variable counter, solusinya adalah dengan melakukan deklarasi dan inisialisasi sebelum kode dijalankan

![Jawaban](https://raw.githubusercontent.com/Ziedny28/2141720117-mobile-2023/main/week-03/docs/Images/prak-2-langkah-1-02.png) 

Penjelasan kode: karena dilakukan while loop dengan value counter awal 0, dan akan berjalan hingga value dari counter menjadi 33, maka akan dicetak 0 hingga 32, hal ini dikarenakan akan dilakukan pengecekan sebelum print dijalankan, yang menyebabkan 33 melebihi batas dan tidak di print
 

### Langkah 3:
Tambahkan kode program berikut, lalu coba eksekusi (Run) kode Anda.

![Jawaban](https://raw.githubusercontent.com/Ziedny28/2141720117-mobile-2023/main/week-03/docs/Images/prak-2-langkah-3-02.png) 

Apa yang terjadi ? Jika terjadi error, silakan perbaiki namun tetap menggunakan do-while.

**Jawaban**

Penjelasan kode: Yang terjadi adalah jika kita menambahkan kode program pada file yang sama, loop akan berjalan dari 33 hingga nilai dari counter menjadi 77, maka akan dicetak 33 hingga 76

## Praktikum 3: Menerapkan Perulangan "for" dan "break-continue"

Selesaikan langkah-langkah praktikum berikut ini menggunakan DartPad di browser Anda.

### Langkah 1:
Ketik atau salin kode program berikut ke dalam fungsi main().

![Jawaban](https://raw.githubusercontent.com/Ziedny28/2141720117-mobile-2023/main/week-03/docs/Images/prak-3-langkah-1.png) 

### Langkah 2:
Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan! Lalu perbaiki jika terjadi error.

**Jawaban**

akan terjadi error, hal ini dikarenakan variable Index belum terdeklarasi, hal lain yang menyebabkan error adalah karena variable Index dipanggil dengan index yang merupakan perbedaan nama variable, solusinya adalah menyamakan nama variable. Masalah selanjutnya adalah terjadinya infinite loops yang menyebabkan loop tanpa akhir, hal ini dikarenakan kita tidak perubahan nilai pada variable index. solusinya adalah menyamakan nama variable dan mengubah nilai dari variable index dengan ++ sebagai berikut 

![Jawaban](https://raw.githubusercontent.com/Ziedny28/2141720117-mobile-2023/main/week-03/docs/Images/prak-3-langkah-1-02.png) 


### Langkah 3

Tambahkan kode program berikut di dalam for-loop, lalu coba eksekusi (Run) kode Anda.

![Jawaban](https://raw.githubusercontent.com/Ziedny28/2141720117-mobile-2023/main/week-03/docs/Images/prak-3-langkah-3.png) 

Apa yang terjadi ? Jika terjadi error, silakan perbaiki namun tetap menggunakan for dan break-continue.

**Jawaban**

Yang terjadi adalah error, hal ini dikarenakan penggunaan huruf kapital pada sintaks yang seharusnya menggunakan huruf kecil, kemudian akan lebih baik jiak if dan else if memiliki {}, solusinya adalah sebagai berikut

![Jawaban](https://raw.githubusercontent.com/Ziedny28/2141720117-mobile-2023/main/week-03/docs/Images/prak-3-langkah-3-02.png) 

Masalah selanjutnya adalah tidak ada yang di print, solusinya adalah mengubah || menjadi &&

![Jawaban](https://raw.githubusercontent.com/Ziedny28/2141720117-mobile-2023/main/week-03/docs/Images/prak-3-langkah-3-03.png) 

Penjelasan Kode: Hal ini dikarenakan operator || akan membuat continue dijalankan karena salah satu dari kondisi bernilai benar(index > 1) yang membuat tidak ada nilai yang dicetak karena continue dijalankan

