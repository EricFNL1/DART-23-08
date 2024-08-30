import 'dart:io';

void main(){
  List<int> numeros = [10,9,8];
  double total = 0;
  
  for(int numero in numeros){
    double mais = numero / 3;
    total += mais;
}

print(total);

}