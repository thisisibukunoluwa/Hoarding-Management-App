import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hoardr/gen/assets.gen.dart';
import 'package:hoardr/models/product_model.dart';
import 'package:hoardr/repository/products_repository.dart';
import 'package:hoardr/utils/product_category_extension.dart';
import 'package:hoardr/widgets/category_chip.dart';
import 'package:hoardr/widgets/viewall_button.dart';
import 'package:hoardr/widgets/wide_button.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomePage extends ConsumerWidget {
  HomePage({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    
    return SafeArea(
        child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Column(
              children: [
                _AppBar(),
                _SearchBar(),
                _CategoryFilters(),
                _SubHeading(title: "Newly Added Items",route:"newly-added"),
                _ItemsList(),
                 _SubHeading(title: "Favorite Items", route: "/favorites",),
                 _FavoriteItems()
              ],
            )));
  }
}

class _AppBar extends StatelessWidget {
  const _AppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(10.0),
        child: Row(
          children: [
            Text("Welcome, Anon"),
            WideButton(
              onPressed: () {},
              buttonText: "Register",
              fontSize: 5,
            ),
          ],
        ));
  }
}

class _SearchBar extends ConsumerWidget {
  const _SearchBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Flexible(
        child: TextFormField(
      decoration: InputDecoration(
          filled: true,
          fillColor: Colors.grey,
          hintText: 'Search Here',
          suffixIcon: Icon(Icons.search),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.0),
              borderSide: BorderSide.none)),
      // everytime the state is updated it will call the filterCardProvider
      // onChanged: ref.read(searchQueryProvider.notifier).onChange
    ));
  }
}

class _CategoryFilters extends ConsumerWidget {
  const _CategoryFilters({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final selectedCategory = ref.watch(selectedCategoryProvider);
    return SizedBox(
        height: 80,
        child: Column(
          children: [
           _SubHeading(title: "Newly Added Items", route: "newly-added"),
            ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: [
                   ...ProductCategory.values.asMap().entries.map((entry) {
                      ProductCategory category = entry.value;
                     return CategoryChip(
                         label: category.capitalName(),
                         imagePath: enumToImageMap[category.name] ?? 'assets/placeholder/placeholder.png'
                       );
                   }),
                  const SizedBox(
                    height: 10,
                  )
                ]),
          ],
        ));
  }
}

class _SubHeading extends StatelessWidget {

  final String title; 
  final String route;

  const _SubHeading({required this.title, required this.route, super.key});


  @override
  Widget build(BuildContext context) {
    return Row(children: [
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title),
            ViewAllButton(
              onTap: () {
                context.go(route);
              },
            )
          ]),
    ]);
  }
}

class _ItemsList extends ConsumerWidget {
  const _ItemsList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
      final allProducts = ref

    return allProducts.when(
      data: (data) => SizedBox(
        height: size.height * 0.65,
        child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.75,
                mainAxisSpacing: 10.0),
            itemCount: 
            itemBuilder: ((context, index) {
              return Center(
                child: CustomGiftCard(
                  
                ),
              );
            })),
      ),
            
      error:(error, stackTrace) => Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text('error $error'),
            ),
          ],
      ),
      loading: () =>  Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Center(
              child: CircularProgressIndicator(),
            )
          ],
        ),
    );
  }
}


class _FavoriteItems extends StatelessWidget {
  const _FavoriteItems({super.key});



  @override
  Widget build(BuildContext context) {
    return  Placeholder();
  }
}

class CustomProductCard extends StatelessWidget {
  final ProductModel product;
  final String publisher;
  final String price;
  final bool isFavorite;
  final String name;

  const CustomProductCard({
    required this.name,
    required this.product,
    required this.publisher,
    required this.price,
    this.isFavorite = false,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
      Column(
        children: [
          Expanded(
              child: Image.asset(
            product.thumbnailPath,
            fit: BoxFit.cover,
          )),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 10,
            ),
            Positioned(
              //to do 
                bottom: 10.0, right: 10.0, child: Icon(Icons.favorite))
        ],
      )
    ]);
  }
}
