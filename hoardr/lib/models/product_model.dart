import 'package:hoardr/gen/assets.gen.dart';
import 'package:uuid/uuid.dart';

enum ProductCategory {
  Electronics,
  Jewelry,
  Clothes,
  Machinery,
  Brandtags,
  AntiqueChairs,
  Vehicles,
  Gadgets,
  Chairs,
  Accessories,
  Furniture
}

Map<ProductCategory, String> enumToImageMap = {
  ProductCategory.values[0]: Assets.icons.electronics.path,
  ProductCategory.values[1]: Assets.icons.jewelry.path,
  ProductCategory.values[2]: Assets.icons.clothes.path,
  ProductCategory.values[3]: Assets.icons.machinery.path
};

class ProductModel {
  final String id;
  final String name;
  final String price;
  final String thumbnailPath;
  final String publisher;
  final String publisherAvatar;
  final String description;
  final DateTime dateAdded;
  final List<ProductCategory> categories;
  bool isFavorite;

  ProductModel(
      {String? id,
      required this.price,
      required this.description,
      required this.name,
      required this.thumbnailPath,
      required this.publisher,
      required this.isFavorite,
      required this.categories,
      required this.dateAdded,
      required this.publisherAvatar
      })
      : id = id ?? Uuid().v4();

  static List<ProductModel> productList = [
    ProductModel(
        name: "Piece of cloth",
        price: "Free",
        thumbnailPath: Assets.products.pieceOfCloth.path,
        publisher: "Iveren",
        publisherAvatar: 'https://unsplash.com/photos/closeup-photography-of-woman-smiling-mEZ3PoFGs_k',
        description:
            "A white tee, a timeless classic, offers both comfort and style. Versatile and adaptable, it's a wardrobe essential. With its clean design, it complements any look effortlessly.",
        categories: [ProductCategory.Clothes],
        isFavorite: false,
        dateAdded: DateTime(2023, 9, 30)),
    ProductModel(
        name: "Nova can leather bag",
        price: '3000',
        thumbnailPath: Assets.products.bag.path,
        publisher: "Anonymous",
        publisherAvatar: "https://images.pexels.com/photos/3746226/pexels-photo-3746226.jpeg",
        description:
            "A chic and contemporary accessory, combining style and functionality in a sleek design. Its premium leather construction offers both durability and a touch of elegance, making it a versatile choice for various occasions.",
        categories: [],
        isFavorite: false,
        dateAdded: DateTime(2023, 9, 30)),
    ProductModel(
        name: "Piece of cloth",
        price: "Free",
        thumbnailPath: Assets.products.pieceOfCloth.path,
        publisher: "Iveren",
        description:
            "A white tee, a timeless classic, offers both comfort and style. Versatile and adaptable, it's a wardrobe essential. With its clean design, it complements any look effortlessly.",
        categories: [ProductCategory.Clothes],
        publisherAvatar: "https://images.pexels.com/photos/7533347/pexels-photo-7533347.jpeg",
        isFavorite: false,
        dateAdded: DateTime(2023, 9, 30)),
    ProductModel(
        name: "Nova can leather bag",
        price: '3000',
        thumbnailPath: Assets.products.bag.path,
        publisher: "Anonymous",
        publisherAvatar:"https://images.pexels.com/photos/8791751/pexels-photo-8791751.jpeg" ,
        description:
            "A chic and contemporary accessory, combining style and functionality in a sleek design. Its premium leather construction offers both durability and a touch of elegance, making it a versatile choice for various occasions.",
        categories: [ProductCategory.Accessories],
        isFavorite: false,
        dateAdded: DateTime(2023, 9, 30)),
    ProductModel(
        name: "Giant Driller",
        price: "30500",
        thumbnailPath: Assets.products.driller.path,
        publisher: "Anonymous",
        description:
            "A powerful and robust piece of machinery, designed for heavy-duty drilling tasks. With its impressive size and strength, it's a formidable tool for excavation and construction projects. This giant driller is built to tackle even the toughest drilling challenges with efficiency and precision.",
        categories: [ProductCategory.Machinery],
        publisherAvatar: "https://images.pexels.com/photos/9222620/pexels-photo-9222620.jpeg",
        isFavorite: false,
        dateAdded: DateTime(2023, 9, 30)),
    ProductModel(
        name: "Gas Compactment",
        price: "2500",
        thumbnailPath: Assets.products.gas.path,
        publisher: "Femi",
        description:
            "A specialized enclosure designed to safely store and manage gas components, ensuring proper containment and control.",
        categories: [ProductCategory.Electronics],
        isFavorite: false,
        publisherAvatar: "https://images.pexels.com/photos/3231041/pexels-photo-3231041.jpeg",
        dateAdded: DateTime(2023, 10, 20)),
    ProductModel(
        name: "Ethiopian Pair Jewelry",
        price: "Free",
        thumbnailPath: Assets.products.ethiopianJewelry.path,
        publisher: "Nosa",
        publisherAvatar: 'https://www.istockphoto.com/photo/black-man-phone-and-smile-in-city-reading-email-social-media-or-blog-on-internet-man-gm1445484957-483880233',
        description:
            "Explore Ethiopian Pair Jewelry - a captivating blend of tradition and artistry. With vibrant gemstones and intricate designs, it's a unique way to express your style and connect with Ethiopian culture. Add a touch of elegance and heritage to your look today.",
        categories: [ProductCategory.Jewelry, ProductCategory.Accessories],
        isFavorite: false,
        dateAdded: DateTime(2023, 10, 20)),
    ProductModel(
        name: "My piggy couch",
        price: "4500",
        thumbnailPath: Assets.products.piggyCouch.path,
        publisher: "Quadri",
        publisherAvatar:'https://images.pexels.com/photos/9226518/pexels-photo-9226518.jpeg',
        description:
            "It's a cozy and inviting place to relax and unwind, perfect for creating enjoyable moments in your home. Whether you're curling up with a book or simply enjoying its unique design, this piggy couch adds a touch of charm and comfort to your living space.",
        categories: [ProductCategory.Chairs],
        isFavorite: false,
        dateAdded: DateTime(2023, 10, 20)),
    ProductModel(
        name: "German Couch",
        price: "Exchange",
        thumbnailPath: Assets.products.germanCouch.path,
        publisher: "Solomon",
        publisherAvatar: 'https://www.istockphoto.com/photo/portrait-of-smiling-young-black-woman-listening-music-with-headset-gm1403251339-455874057',
        description:
            "Imagine a cozy and durable German couch in your living room. It's well-made and comfortable for relaxing or spending time with family and friends. The simple and stylish design adds a touch of elegance to your home. Get a quality German couch and make your space more comfortable and beautiful.",
        categories: [ProductCategory.Furniture],
        isFavorite: false,
        dateAdded: DateTime(2023, 10, 20)),
    ProductModel(
        name: "Wall Socket",
        price: "2500",
        thumbnailPath: Assets.products.wallSwitch.path,
        publisher: "Aisha",
        publisherAvatar: 'https://www.istockphoto.com/photo/smiley-happy-african-woman-gm1448286341-485851483',
        description:
            "Wall sockets are an essential part of your home's electrical system. It's where you plug in your devices to get power. From charging your phone to running appliances, the wall socket is like the gateway to electricity in your house. Keep your gadgets powered up and your life running smoothly with a reliable wall socket.",
        categories: [ProductCategory.Electronics],
        isFavorite: false,
        dateAdded: DateTime(2023, 10, 20)),
    ProductModel(
        name: "Sack bag",
        price: "Free",
        thumbnailPath: Assets.products.sack.path,
        publisher: "Samuel",
        publisherAvatar: 'https://images.pexels.com/photos/2871659/pexels-photo-2871659.jpeg',
        description:
            "Introducing the versatile Sack Bag - your perfect companion for convenience on the go! This lightweight and stylish bag is designed for the modern lifestyle. Whether you're heading to the gym, carrying your essentials to school, or simply running errands, the sack bag offers effortless organization and a trendy look.",
        categories: [ProductCategory.Accessories],
        isFavorite: false,
        dateAdded: DateTime(2023, 10, 20)),
  ];
}
