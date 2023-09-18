void main() {
  var record = ('first', a: 2, b: true, 'last');
  print(record);

  //langkah 3
  print('\n langkah 3');
  var recordNum = (1,2);
  print('original recordNum: $recordNum');
  recordNum = tukar(recordNum);
  print('setelah menggunakan tukar: $recordNum');

  //langkah 4
  print('\n langkah 4');
  (String, int) mahasiswa;
  mahasiswa = ("Ziedny Bisma Mubarok", 2141720117);
  print(mahasiswa);

//langkah 5
  var mahasiswa2 = ('Ziedny Bisma Mubarok',
   a:2, b:true, '2141720117');
  print(mahasiswa2.$1);
  print(mahasiswa2.a);
  print(mahasiswa2.b);
  print(mahasiswa2.$2);
}

(int, int) tukar((int, int) record){
var (a,b) = record;
return(b,a);  
}