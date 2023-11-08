import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hoardr/gen/assets.gen.dart';
import 'package:hoardr/widgets/page_scaffold.dart';


class AddItemPage extends StatefulWidget {
  const AddItemPage({super.key});

  @override
  State<AddItemPage> createState() => _AddItemPageState();
}

class _AddItemPageState extends State<AddItemPage> {
  

  @override
  Widget build(BuildContext context) {
    return PageScaffold(
      title: "Add Item",
      child: Column(
        children: [
          GestureDetector(
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Assets.icons.uploadItem.image(),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Upload item", style: Theme.of(context).textTheme.headlineSmall),
                         Text(
                          "Have a new item, upload by clicking on this button."
                          ,style: Theme.of(context).textTheme.bodySmall
                        )
                      ],
                    )
                  ]
                ),
              ),
            ),
          ),
          GestureDetector(
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                     Assets.icons.viewInventory.image(),
                    Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("View inventory",
                          style: Theme.of(context).textTheme.headlineSmall),
                           Text(
                                "View items uploaded, check quantity available and edit the item.",
                                style: Theme.of(context).textTheme.bodySmall,
                            ),
                          
                      ],
                    )
                  ]
                ),
              ),
            ),
          ),
        ],
      ),

    );
  }
}
