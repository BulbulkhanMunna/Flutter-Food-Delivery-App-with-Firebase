
//food item
class Food {
  final String name;            //chees burger
  final String description;     // a burger full of cheese
  final String imagePath;       //ib/images/cheese_burger.png
  final double price;           //4.99 
  final FoodCategory category;  //burger
  List<Addon> availableAddons;  // [extra chee, sauce]

  Food({
    required this.name,
    required this.description,
    required this.imagePath,
    required this.price,
    required this.category,
    required this.availableAddons
  });
}

//food categories

enum FoodCategory{
  burgers,
  sides,
  salads,
  drinks,
  desserts,
 
}

//food addons
class Addon{
  String name;
  double price;

  Addon({
    required this.name,
    required this.price,
  }
  );
}
