void main(){
  var list1 = [1,2,3];
  var list2 = [0, ...list1];
  print(list1);
  print(list2);
  print(list2.length);

  list1 = [1,2];
  print(list1);
  var list3 = [0, ...?list1];
  print(list3.length);

  print('\nNim');

  var nim = [2141720117];
  var listnim = [];
  listnim = [...nim];
  print(listnim);


  print('\nLangkah 4');
  bool promoActive = false;

  var nav = ['Home', 'Furniture', 'Plants',
   if (promoActive) 'Outlet'];
  print(nav);


  print('\n Langkah 5');
  String login = "User";
  var nav2 = ['Home', 'Furniture', 'Plants', if (login case 'Manager') 'Inventory'];
  print(nav2);

  print('\n Langkah 6');
  var listOfInts = [1,2,3];
  var listOfStrings = ['#0', for(var i in listOfInts) '#$i' ];
  assert(listOfStrings[1] == '#1');
  print(listOfStrings);
}