void main(){
  var halogens = {'fluorine', 'chlorine', 'bromine','iodine', 'astatine'};
  print(halogens);
  
  var names1 = <String>{};
  Set<String> names2 = {}; //this works too
  // var names3 = {}; //creates a map, not a set

  names1.add("Nama: Ziedny Bisma Mubarok");
  final nim = {"Nim: 2141720117"}; 
  names2.addAll(nim);

  print(names1);
  print(names2);
  // print(names3);
}