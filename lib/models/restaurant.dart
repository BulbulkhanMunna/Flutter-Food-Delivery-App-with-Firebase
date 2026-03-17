import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:collection/collection.dart';
import 'package:food_delivery/models/food.dart';
import 'package:food_delivery/models/cart_item.dart';

class Restaurant extends ChangeNotifier {
  //list of food menu
  final List<Food> _menu = [

    Food(
      name: "Classic Cheese Burger", 
    description: "A juicy beef patty with melted cheddar, lettuce, tomato, and a hint of onion and picle ", 
    imagePath: "lib/images/burgers/burg1.png", 
    price: 0.99, 
    category: FoodCategory.burgers, 
    availableAddons: [
      Addon(name: "Extra chessse", price: 0.99),
      Addon(name: "Bacon", price: 0.99),
      Addon(name: "Avocado", price: 3.99),

    ]
    ),
       Food(
      name: "BBQ Bacon burger", 
    description: "Somky BBQ souce, crispy bacon, and onion rings make this beef burger a savory delight", 
    imagePath: "lib/images/burgers/burgr2.png", 
    price: 0.99, 
    category: FoodCategory.burgers, 
    availableAddons: [
      Addon(name: "Extra chessse", price: 0.99),
      Addon(name: "Bacon", price: 0.99),
      Addon(name: "Avocado", price: 3.99),

    ]
    ),

       Food(
      name: "Veggie Burger", 
    description: "A juicy beef patty with melted cheddar, lettuce, tomato, and a hint of onion and picle ", 
    imagePath: "lib/images/burgers/burgr3.png", 
    price: 0.99, 
    category: FoodCategory.burgers, 
    availableAddons: [
      Addon(name: "Extra chessse", price: 0.99),
      Addon(name: "Bacon", price: 0.99),
      Addon(name: "Avocado", price: 3.99),

    ]
    ),
       Food(
      name: "BBQ Bacon burger", 
    description: "Somky BBQ souce, crispy bacon, and onion rings make this beef burger a savory delight ", 
    imagePath: "lib/images/burgers/burgr4.png", 
    price: 0.99, 
    category: FoodCategory.burgers, 
    availableAddons: [
      Addon(name: "Extra chessse", price: 0.99),
      Addon(name: "Bacon", price: 0.99),
      Addon(name: "Avocado", price: 3.99),

    ]
    ),

       Food(
      name: "Classic Cheese Burger", 
    description: "A juicy beef patty with melted cheddar, lettuce, tomato, and a hint of onion and picle ", 
    imagePath: "lib/images/burgers/burgr5.png", 
    price: 0.99, 
    category: FoodCategory.burgers, 
    availableAddons: [
      Addon(name: "Extra chessse", price: 0.99),
      Addon(name: "Bacon", price: 0.99),
      Addon(name: "Avocado", price: 3.99),

    ]
    ),

    //sides
    Food(
      name: "French Fries", 
    description: "Thinly cut potato strips, deep-fried until golden and crispy on the outside while remaining soft and fluffy on the inside", 
    imagePath: "lib/images/sides/bread1.jpeg", 
    price: 5.98, 
    category: FoodCategory.sides, 
    availableAddons:[
      Addon(name: "Grilled chicken", price: 0.99),
      Addon(name: "Anchovies", price: 0.99),
      Addon(name: "Avocado", price: 3.99),

    ]
    ),
      Food(
      name: "Coleslaw", 
    description: "A crunchy and creamy salad made primarily from finely shredded raw cabbage and carrots, mixed with a dressing", 
    imagePath: "lib/images/sides/bread2.jpeg", 
    price: 5.98, 
    category: FoodCategory.sides, 
    availableAddons:[
      Addon(name: "Grilled chicken", price: 0.99),
      Addon(name: "Anchovies", price: 0.99),
      Addon(name: "Avocado", price: 3.99),

    ]
    ),
      Food(
      name: "Onion Rings", 
    description: "Thick slices of onion, dipped in a seasoned batter (often beer batter) or coated in breadcrumbs, and then deep-fried until golden brown", 
    imagePath: "lib/images/sides/bread3.jpeg", 
    price: 5.98, 
    category: FoodCategory.sides, 
    availableAddons:[
      Addon(name: "Grilled chicken", price: 0.99),
      Addon(name: "Anchovies", price: 0.99),
      Addon(name: "Avocado", price: 3.99),

    ]
    ),
      Food(
      name: "Garlic Bread", 
    description: "A staple side for Italian meals, consisting of a baguette or Italian loaf sliced, spread with a mixture of butter", 
    imagePath: "lib/images/sides/bread4.jpeg", 
    price: 5.98, 
    category: FoodCategory.sides, 
    availableAddons:[
      Addon(name: "Grilled chicken", price: 0.99),
      Addon(name: "Anchovies", price: 0.99),
      Addon(name: "Avocado", price: 3.99),

    ]
    ),
      Food(
      name: "Mashed Potatoes", 
    description: "A comforting and creamy side dish made from boiled potatoes, typically Russets or Yukon Golds, that are mashed and mixed with butter", 
    imagePath: "lib/images/sides/bread5.jpeg", 
    price: 5.98, 
    category: FoodCategory.sides, 
    availableAddons:[
      Addon(name: "Grilled chicken", price: 0.99),
      Addon(name: "Anchovies", price: 0.99),
      Addon(name: "Avocado", price: 3.99),

    ]
    ),


    //salads

    Food(
      name: "Caesar Salad", 
    description: "A classic salad featuring crisp romaine lettuce, crunchy croutons, and shredded Parmesan cheese", 
    imagePath: "lib/images/salads/salad1.jpeg", 
    price: 5.98, 
    category: FoodCategory.salads, 
    availableAddons:[
      Addon(name: "Grilled chicken", price: 0.99),
      Addon(name: "Anchovies", price: 0.99),
      Addon(name: "Avocado", price: 3.99),

    ]
    ),
     //salads

    Food(
      name: "Greek Salad", 
    description: "A refreshing, rustic salad from Greece made with chunks of ripe tomatoes, cucumber, red onion, bell peppers", 
    imagePath: "lib/images/salads/salad2.jpeg", 
    price: 5.98, 
    category: FoodCategory.salads, 
    availableAddons:[
      Addon(name: "Grilled chicken", price: 0.99),
      Addon(name: "Anchovies", price: 0.99),
      Addon(name: "Avocado", price: 3.99),

    ]
    ),

     //salads

    Food(
      name: "Caprese Salad ", 
    description: "An Italian starter showcasing the colors of the Italian flag. It consists of sliced fresh mozzarella, ripe tomatoes, and sweet basil leaves", 
    imagePath: "lib/images/salads/salad3.jpeg", 
    price: 5.98, 
    category: FoodCategory.salads, 
    availableAddons:[
      Addon(name: "Grilled chicken", price: 0.99),
      Addon(name: "Anchovies", price: 0.99),
      Addon(name: "Avocado", price: 3.99),

    ]
    ),

     //salads

    Food(
      name: "Waldorf Salad", 
    description: "A classic American salad created at the Waldorf Astoria hotel in New York. It's a mixture of fresh apples", 
    imagePath: "lib/images/salads/salad4.jpeg", 
    price: 5.98, 
    category: FoodCategory.salads, 
    availableAddons:[
      Addon(name: "Grilled chicken", price: 0.99),
      Addon(name: "Anchovies", price: 0.99),
      Addon(name: "Avocado", price: 3.99),

    ]
    ),

     //salads

    Food(
      name: "Nicoise Salad", 
    description: "A classic salad featuring crisp romaine lettuce, crunchy croutons, and shredded Parmesan cheese", 
    imagePath: "lib/images/salads/salad5.jpeg", 
    price: 5.98, 
    category: FoodCategory.salads, 
    availableAddons:[
      Addon(name: "Grilled chicken", price: 0.99),
      Addon(name: "Anchovies", price: 0.99),
      Addon(name: "Avocado", price: 3.99),

    ]
    ),

    //sides
      

    //desserts
     Food(
      name: "Tiramisu", 
    description: "A classic Italian no-bake dessert consisting of coffee-soaked ladyfingers (savoiardi) layered with a rich, creamy mascarpone cheese mixture", 
    imagePath: "lib/images/desserts/desrt1.jpeg", 
    price: 5.98, 
    category: FoodCategory.desserts, 
    availableAddons:[
      Addon(name: "Grilled chicken", price: 0.99),
      Addon(name: "Anchovies", price: 0.99),
      Addon(name: "Avocado", price: 3.99),

    ]
    ),
     Food(
      name: "Chocolate Lava Cake", 
    description: "Also known as moelleux au chocolat, this is a rich individual chocolate cake with a surprising liquid chocolate center", 
    imagePath: "lib/images/desserts/desrt2.jpeg", 
    price: 5.98, 
    category: FoodCategory.desserts, 
    availableAddons:[
      Addon(name: "Grilled chicken", price: 0.99),
      Addon(name: "Anchovies", price: 0.99),
      Addon(name: "Avocado", price: 3.99),

    ]
    ),
     Food(
      name: "Cheesecake", 
    description: "A sweet dessert consisting of one or more layers. The main, thickest layer consists of a mixture of soft, fresh cheese (typically cream cheese or ricotta), eggs, and sugar", 
    imagePath: "lib/images/desserts/desrt3.jpeg", 
    price: 5.98, 
    category: FoodCategory.desserts, 
    availableAddons:[
      Addon(name: "Grilled chicken", price: 0.99),
      Addon(name: "Anchovies", price: 0.99),
      Addon(name: "Avocado", price: 3.99),

    ]
    ),
     Food(
      name: "Crème Brûlée", 
    description: "A simple yet elegant French dessert of a rich vanilla custard base topped with a contrasting layer of hard caramelized sugar", 
    imagePath: "lib/images/desserts/desrt4.jpeg", 
    price: 5.98, 
    category: FoodCategory.desserts, 
    availableAddons:[
      Addon(name: "Grilled chicken", price: 0.99),
      Addon(name: "Anchovies", price: 0.99),
      Addon(name: "Avocado", price: 3.99),

    ]
    ),
     Food(
      name: "Apple Pie", 
    description: "A timeless classic, especially in American cuisine. It features a flaky, buttery pastry crust filled with sliced apples (often a mix of tart and sweet varieties) tossed with sugar", 
    imagePath: "lib/images/desserts/desrt5.jpeg", 
    price: 5.98, 
    category: FoodCategory.desserts, 
    availableAddons:[
      Addon(name: "Grilled chicken", price: 0.99),
      Addon(name: "Anchovies", price: 0.99),
      Addon(name: "Avocado", price: 3.99),

    ]
    ),

    //drinks
      Food(
      name: "Coca-Cola", 
    description: "The world's most iconic carbonated soft drink, known for its distinctive caramel color and unique blend of sweet ", 
    imagePath: "lib/images/drinks/drink1.jpeg", 
    price: 5.98, 
    category: FoodCategory.drinks, 
    availableAddons:[
      Addon(name: "Grilled chicken", price: 0.99),
      Addon(name: "Anchovies", price: 0.99),
      Addon(name: "Avocado", price: 3.99),

    ]
    ),

       Food(
      name: "Sprite", 
    description: "A clear, lemon-lime flavored carbonated soft drink that's known for its crisp, clean, and refreshing citrus taste ", 
    imagePath: "lib/images/drinks/drink2.jpeg", 
    price: 5.98, 
    category: FoodCategory.drinks, 
    availableAddons:[
      Addon(name: "Grilled chicken", price: 0.99),
      Addon(name: "Anchovies", price: 0.99),
      Addon(name: "Avocado", price: 3.99),

    ]
    ),

       Food(
      name: "Fanta", 
    description: "The world's most iconic carbonated soft drink, known for its distinctive caramel color and unique blend of sweet ", 
    imagePath: "lib/images/drinks/drink3.jpeg", 
    price: 5.98, 
    category: FoodCategory.drinks, 
    availableAddons:[
      Addon(name: "Grilled chicken", price: 0.99),
      Addon(name: "Anchovies", price: 0.99),
      Addon(name: "Avocado", price: 3.99),

    ]
    ),

       Food(
      name: "Pepsi", 
    description: "The world's most iconic carbonated soft drink, known for its distinctive caramel color and unique blend of sweet ", 
    imagePath: "lib/images/drinks/drink4.jpeg", 
    price: 5.98, 
    category: FoodCategory.drinks, 
    availableAddons:[
      Addon(name: "Grilled chicken", price: 0.99),
      Addon(name: "Anchovies", price: 0.99),
      Addon(name: "Avocado", price: 3.99),

    ]
    ),

       Food(
      name: "Mountain Dew", 
    description: "The world's most iconic carbonated soft drink, known for its distinctive caramel color and unique blend of sweet ", 
    imagePath: "lib/images/drinks/drink5.jpeg", 
    price: 5.98, 
    category: FoodCategory.drinks, 
    availableAddons:[
      Addon(name: "Grilled chicken", price: 0.99),
      Addon(name: "Anchovies", price: 0.99),
      Addon(name: "Avocado", price: 3.99),

    ]
    ),
    
  ];
 
 
 //user cart
  final List<CartItem> _cart = [];

  //delivery address(which user can change/update)
  String _deliveryAddress = "Martin Luther Ring";



  //G E T T E R S
  List<Food> get menu => _menu;
  List<CartItem> get cart => _cart;
  String get deliveryAddress => _deliveryAddress;




  //O P E R A T I O N S

 

  //add to cart
  void addToCart(Food food, List<Addon> selectedAddons){
    //see if there is a cart item already with the same food and selelected addons
    CartItem ? cartItem = _cart.firstWhereOrNull((item){
      //check if the food items are the same
      bool isSamedFood = item.food == food;

      //check if the list of selected addons are the same
      bool isSameAddons = ListEquality().equals(item.selectedAddons, selectedAddons);

      return isSamedFood && isSameAddons;
    });

    //if item already exists , increase it's quantity
    if(cartItem != null){
      cartItem.quantity++;
    }

    //otherwise, add a new cart item to the cart 

    else{
      _cart.add(CartItem(food: food, selectedAddons: selectedAddons)
      );
    }

    notifyListeners();

  }


  //remove from cart

  void removeFromCart(CartItem cartItem){
    int cartIndex = _cart.indexOf(cartItem);

    if(cartIndex != -1){
      if(_cart[cartIndex].quantity>1){
        _cart[cartIndex].quantity--;
      }else{
        _cart.remove(cartIndex);
      }
    }
    notifyListeners();
  }

  //get total price of cart
  double getTotalPrice(){
    double total = 0.0;

    for(CartItem cartItem in _cart){
      double itemTotal = cartItem.food.price;

      for(Addon addon in cartItem.selectedAddons){
        itemTotal +=addon.price;
      }

      total += itemTotal * cartItem.quantity;
    }

    return total;


  }

  //get total number of items in cart
  int getTotalItemCount (){
    int totalItemCount = 0;

    for (CartItem cartItem in _cart){
      totalItemCount += cartItem.quantity;
    }

    return totalItemCount;
  }

  
  //clear cart

  void clearCart(){
    _cart.clear();
    notifyListeners();
  }

  //update delivery address
 void updateDeliveryAddress (String newAddress){
  _deliveryAddress = newAddress;
  notifyListeners();
 }




  //H E L P E R S

  //generate a receipt
  String displayCarReceipt(){
    final receipt = StringBuffer();
    receipt.writeln("Here's your receipt");
    receipt.writeln();

    //format the date to include up to seconds only
    String formattedDate = DateFormat('yyyy-MM-dd HH:mm:ss').format(DateTime.now());
    receipt.writeln(formattedDate);
    receipt.writeln();
    receipt.writeln("-----------");

    for(final cartItem in _cart){
      receipt.writeln("${cartItem.quantity} x ${cartItem.food.name} - ${_formatPrice(cartItem.food.price)}");
      if(cartItem.selectedAddons.isNotEmpty){
        receipt.writeln(" Add-ons:  ${_formatAddons(cartItem.selectedAddons)}");

      }
      receipt.writeln();
    }
    receipt.writeln("-------------");
    receipt.writeln();
    receipt.writeln("Total Items: ${getTotalItemCount()}");
    receipt.writeln("Total price: ${_formatPrice(getTotalPrice())}");
    receipt.writeln();
    receipt.writeln("Delivering to: $deliveryAddress");

    return receipt.toString();

  }

  //format double value into money
  String _formatPrice(double price){
    return "\€${price.toStringAsFixed(2)}";
  }

  //format list of addons into a string summary
  String _formatAddons(List<Addon> addons){
    return addons.map((addon)=>"${addon.name} (${_formatPrice(addon.price)})")
    .join(", ");
  }

}