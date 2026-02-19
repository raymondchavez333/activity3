import 'dart:io';

void main() {

  
  List<String> products = [];
  List<int> prices = [];
  List<int> quantities = [];

  String choice = '';

  do {

    print("\n---------------------------------------------------------------");
    print("                        Inventory System");
    print("---------------------------------------------------------------");
    print("1. Add Product");
    print("2. View Products");
    print("3. Sell Product");
    print("4. Exit");

    stdout.write("Enter Choice: ");
    choice = stdin.readLineSync() ?? '';

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

        print("Product added successfully.");
        break;

      
      case '2':

        print("---------------------------------------------------------------");
        print("Product Name\tPrice\tQuantity\tAmount");
        print("---------------------------------------------------------------");

        int totalAmount = 0;

        if(products.isEmpty){
          print("No products available.");
        } else {

          for(int i = 0; i < products.length; i++){

            int amount = prices[i] * quantities[i];
            totalAmount += amount;

            print("${products[i]}\t\t${prices[i]}\t${quantities[i]}\t\t$amount");
          }
          print("---------------------------------------------------------------");
          print("TOTAL AMOUNT: $totalAmount");
        }

        break;

      
      case '3':

        stdout.write("Enter product to sell: ");
        String sellProduct = stdin.readLineSync() ?? '';

        int index = products.indexWhere(
          (p) => p.toLowerCase() == sellProduct.toLowerCase()
        );

        if(index == -1){
          print("Product not found.");
        } else {

          stdout.write("Enter quantity to sell: ");
          int sellQty = int.parse(stdin.readLineSync() ?? '0');

          if(sellQty <= quantities[index]){
            quantities[index] -= sellQty;
            print("Product sold successfully.");
          } else {
            print("Insufficient stock.");
          }
        }

        break;

      case '4':
        print("Exiting program...");
        break;

      default:
        print("Invalid choice.");
    }

  } while(choice != '4');
}
