import 'dart:io';
void main(){

  int choice= 0;

  do {
    print("1. Add Product");
    print("2. View Products");
    print("3. Sell Product");
    print("4. Exit");

    stdout.write("Enter Choice: ");
    String choice = stdin.readLineSync() ?? '';

    switch(choice){

      case '1':
        stdout.write("Enter product name: ");
        String productName = stdin.readLineSync() ?? '';
        
    }

  }
  while(choice != 4);
}