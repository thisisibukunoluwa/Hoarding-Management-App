import 'package:flutter/material.dart';
import 'package:hoardr/models/product_model.dart';
import 'package:hoardr/repository/products_repository.dart';
import 'package:hoardr/utils/product_category_extension.dart';
import 'package:hoardr/widgets/wide_button.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomePage extends ConsumerWidget {
  HomePage({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final allProducts = ref.watch(cardRepositoryProvider);
    return Scaffold(
        appBar: AppBar(
          title: Padding(
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
              )),
          elevation: 0.0,
          backgroundColor: Colors.transparent,
          centerTitle: false,
        ),
        body: Padding(
          padding: EdgeInsets.all(10.0),
          child: Column(
            children: [
              _SearchBar()
            ],
          ),
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
                fillColor: ColorName.lightGrey,
                hintText: 'Search Card',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: BorderSide.none)),
            // everytime the state is updated it will call the filterCardProvider
            onChanged: ref.read(searchQueryProvider.notifier).onChange));
  }
}




class _CategoryFilters extends ConsumerWidget {
  const _CategoryFilters({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedCategory = ref.watch(selectedCategoryProvider);
    return SizedBox(
      height: 30,
      child: ListView(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          children: [
            ...ProductCategory.values.map((category) => CustomChip(
                  label: category.capitalName(),
                  isSelected: selectedCategory == category,
                  onTap: () {
                    ref
                        .read(selectedCategoryProvider.notifier)
                        .setSelectedCategory(category);
                  },
                )),
            const SizedBox(
              height: 10,
            )
          ]),
    );
  }
}



class CustomChip extends StatefulWidget {
  const CustomChip({super.key});

  @override
  State<CustomChip> createState() => _CustomChipState();
}

class _CustomChipState extends State<CustomChip> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}