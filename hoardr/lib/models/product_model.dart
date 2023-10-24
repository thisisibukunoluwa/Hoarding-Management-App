import 'package:hoardr/gen/assets.gen.dart';
import 'package:uuid/uuid.dart';

enum ProductCategory {
  Brandtags,
  AntiqueChairs,
  Electronics,
  Vehicles,
  Gadgets,
  Chairs,
  Jewelry,
  Clothes,
  Machinery,
  Accessories,
  Furniture 
}

class ProductModel {
  final String id;
  final String name;
  final String price;
  final String thumbnailPath;
  final String publisher;
  final String description;
  final List<ProductCategory> categories;
  bool isFavorite;

  ProductModel({String? id,
      required this.price,
      required this.description,
      required this.name,
      required this.thumbnailPath,
      required this.publisher,
      required this.isFavorite,
      required this.categories,
    })
      : id = id ?? Uuid().v4();

  static List<ProductModel> productList = [
    ProductModel(
      name: "Piece of cloth",
      price: "Free",
      thumbnailPath: Assets.products.pieceOfCloth.path,
      publisher: "Iveren",
      description:
          "A white tee, a timeless classic, offers both comfort and style. Versatile and adaptable, it's a wardrobe essential. With its clean design, it complements any look effortlessly.",
      categories: [ProductCategory.Clothes],
      isFavorite: false
    ),
    ProductModel(
      name: "Nova can leather bag",
      price: '3000',
      thumbnailPath: Assets.products.bag.path,
      publisher: "Anonymous",
      description:
          "A chic and contemporary accessory, combining style and functionality in a sleek design. Its premium leather construction offers both durability and a touch of elegance, making it a versatile choice for various occasions.",
      categories: [],
      isFavorite: false
    ),
    ProductModel(
      name: "Piece of cloth",
      price: "Free",
      thumbnailPath: Assets.products.pieceOfCloth.path,
      publisher: "Iveren",
      description:
          "A white tee, a timeless classic, offers both comfort and style. Versatile and adaptable, it's a wardrobe essential. With its clean design, it complements any look effortlessly.",
      categories: [ProductCategory.Clothes],
      isFavorite: false
    ),
    ProductModel(
      name: "Nova can leather bag",
      price: '3000',
      thumbnailPath: Assets.products.bag.path,
      publisher: "Anonymous",
      description:
          "A chic and contemporary accessory, combining style and functionality in a sleek design. Its premium leather construction offers both durability and a touch of elegance, making it a versatile choice for various occasions.",
      categories: [ProductCategory.Accessories],
      isFavorite: false
    ),
    ProductModel(
      name: "Giant Driller",
      price: "30500",
      thumbnailPath: Assets.products.driller.path,
      publisher: "Anonymous",
      description:
          "A powerful and robust piece of machinery, designed for heavy-duty drilling tasks. With its impressive size and strength, it's a formidable tool for excavation and construction projects. This giant driller is built to tackle even the toughest drilling challenges with efficiency and precision.",
      categories: [ProductCategory.Machinery],
      isFavorite: false
    ),
    ProductModel(
      name: "Gas Compactment",
      price: "2500",
      thumbnailPath: Assets.products.gas.path,
      publisher: "Femi",
      description:
          "A specialized enclosure designed to safely store and manage gas components, ensuring proper containment and control.",
      categories: [],
      isFavorite: false
    ),
    ProductModel(
      name: "Ethiopian Pair Jewelry",
      price: "Free",
      thumbnailPath: Assets.products.ethiopianJewelry.path,
      publisher: "Nosa",
      description:
          "Explore Ethiopian Pair Jewelry - a captivating blend of tradition and artistry. With vibrant gemstones and intricate designs, it's a unique way to express your style and connect with Ethiopian culture. Add a touch of elegance and heritage to your look today.",
      categories: [ProductCategory.Jewelry, ProductCategory.Accessories],
      isFavorite: false
    ),
    ProductModel(
      name: "My piggy couch",
      price: "4500",
      thumbnailPath: Assets.products.piggyCouch.path,
      publisher: "Quadri",
      description:
          "It's a cozy and inviting place to relax and unwind, perfect for creating enjoyable moments in your home. Whether you're curling up with a book or simply enjoying its unique design, this piggy couch adds a touch of charm and comfort to your living space.",
      categories: [ProductCategory.Chairs],
      isFavorite: false
    ),
    ProductModel(
      name: "German Couch",
      price: "Exchange",
      thumbnailPath: Assets.products.germanCouch.path,
      publisher: "Solomon",
      description:
          "Imagine a cozy and durable German couch in your living room. It's well-made and comfortable for relaxing or spending time with family and friends. The simple and stylish design adds a touch of elegance to your home. Get a quality German couch and make your space more comfortable and beautiful.",
      categories: [ProductCategory.Furniture],
      isFavorite: false
    ),
    ProductModel(
      name: "Wall Socket",
      price: "2500",
      thumbnailPath: Assets.products.wallSwitch.path,
      publisher: "Aisha",
      description:
          "Wall sockets are an essential part of your home's electrical system. It's where you plug in your devices to get power. From charging your phone to running appliances, the wall socket is like the gateway to electricity in your house. Keep your gadgets powered up and your life running smoothly with a reliable wall socket.",
      categories: [ProductCategory.Electronics],
      isFavorite: false
    ),
    ProductModel(
      name: "Sack bag",
      price: "Free",
      thumbnailPath: Assets.products.sack.path,
      publisher: "Samuel",
      description:
          "Introducing the versatile Sack Bag - your perfect companion for convenience on the go! This lightweight and stylish bag is designed for the modern lifestyle. Whether you're heading to the gym, carrying your essentials to school, or simply running errands, the sack bag offers effortless organization and a trendy look.",
      categories: [ProductCategory.Accessories],
      isFavorite: false
    ),
  ];
}
