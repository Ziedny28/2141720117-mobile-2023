void main(){
  //loop hingga 201
  for(int i = 1; i <= 201; i++){ 
    //memanggil fungsi isPrime dan mencetak hasil
    isPrime(i)?print("$i is prime, Ziedny Bisma Mubarok, 2141720117"):null;
  }
}

bool isPrime(int number){
  int count = 0;
  // loop dari 1 hingga angka tersebut
  for(int i = 1; i <= number; i++){
    // jika angka tersebut dapat dibagi maka count akan ditambah
    if(number % i == 0){
      count++;
    }
  }
  // jika count == 2 maka ia adalah bilangan prima
  return count == 2;
}