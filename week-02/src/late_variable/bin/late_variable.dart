class Student{
  late String name;
  late String nim;
  late int age;
  late String city;
  
  Student(this.name, this.nim, this.age, this.city); //constructor
  String getStudent() => 'Name :$name\nNim :$nim\nAge :$age\nCity :$city';
}

void main() {
  Student student_1 = Student("Ziedny","2141720117",20,"Malang"); //instance 
  print(student_1.getStudent());
}