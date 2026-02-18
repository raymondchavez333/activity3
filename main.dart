import 'dart:io';
void main(){

  int choice= 0;

  do {
    print("-------------------------------------------");
    print("              Inventory System             ");
    print("-------------------------------------------");
    print("1. Add Product");
    print("2. View Products");
    print("3. Sell Product");
    print("4. Exit");

    stdout.write("Enter Choice: ");
    String choice = stdin.readLineSync() ?? '';

    var products =  [];
    var prices = [];
    var quantities =[];

    switch(choice){

      case '1':
        stdout.write("Enter product name: ");
        String productName = stdin.readLineSync() ?? '';
        products.add(productName);

        stdout.write("Enter price: ");
        int price = int.parse(stdin.readLineSync() ?? '0');
        prices.add(price);

        stdout.write("Enter quantity: ");
        int quantity = int.parse(stdin.readLineSync() ?? '0');
        quantities.add(quantity);

        
        break;
      
    }

  }
  while(choice != 4);
}