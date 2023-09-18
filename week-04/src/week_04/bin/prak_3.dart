void main() {
  var gifts = {
    //key //value
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 1
  };

  var nobleGases = {2: 'helium', 10: 'neon', 18: 2};

  print(gifts);
  print(nobleGases);

  var mhs1 = Map<String, String>(); //deklarasi variable mhs1
  gifts['first'] = 'partridge';
  gifts['second'] = 'turtledoves';
  gifts['fifth'] = 'golden rings';

  var mhs2 = Map<int, String>(); //deklarasi variable mhs2
  nobleGases[2] = 'helium';
  nobleGases[10] = 'neon';
  nobleGases[18] = 'argon';

  print(gifts);
  print(nobleGases);

  //menambahkan nama dan nim
  gifts['nim'] = '2141720117';
  gifts['nama'] = 'Ziedny Bisma Mubarok';
  nobleGases[0] = 'Ziedny Bisma Mubarok';
  nobleGases[1] = '2141720117';
  mhs1['nim'] = '2141720117';
  mhs1['nama'] = 'Ziedny Bisma Mubarok';
  mhs2[0] = 'Ziedny Bisma Mubarok';
  mhs2[1] = '2141720117';

  print('\n====== setelah diberi nama dan nim ======');
  print('gifts: $gifts');
  print('nobleGases: $nobleGases');
  print('mhs1: $mhs1');
  print('mhs2: $mhs2');
}
