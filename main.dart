import 'dart:io';
void main(){

  int choice= 0;

  do {
    print("---------------------------------------------------------------");
    print("                        Inventory System                       ");
    print("---------------------------------------------------------------");
    print("1. Add Product");
    print("2. View Products");
    print("3. Sell Products");
    print("4. Exit");

    stdout.write("Enter Choice: ");
    String choice = stdin.readLineSync() ?? '';

    var products =  [];
    var prices = [];
    var quantities =[];
    int totalAmount = 0;

    switch(choice){

      case '1':
        stdout.write("Enter product name: ");
        String productName = stdin.readLineSync() ?? '';
        products.add(productName);

        stdout.write("Enter price: ");
        int price = int.parse(stdin.readLineSync() ?? '0');
        prices.add(price);
        totalAmount += price;

        stdout.write("Enter quantity: ");
        int quantity = int.parse(stdin.readLineSync() ?? '0');
        quantities.add(quantity);

        print("Product added successfully.");
        break;
      
      case '2':
        print("---------------------------------------------------------------");
        print("                        Inventory System                       ");
        print("---------------------------------------------------------------");
        print("Product Name    Price        Quantity        Amount            ");
        print("---------------------------------------------------------------");

        // for loop for getting the items based on the current index
        for(int i = 0; i < products.length; i++){
          print("$products[i] $prices[i] $quantities[i] $totalAmount           ");
        }

        
    }

  }
  while(choice != 4);
}