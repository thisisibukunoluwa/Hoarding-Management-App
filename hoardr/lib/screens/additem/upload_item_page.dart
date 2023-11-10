import 'package:flutter/material.dart';
import 'package:hoardr/models/product_model.dart';
import 'package:hoardr/utils/size_config.dart';
import 'package:hoardr/widgets/custom_text_field.dart';
import 'package:hoardr/widgets/page_scaffold.dart';
import 'package:hoardr/widgets/wide_button.dart';

class UploadItemPage extends StatefulWidget {
  const UploadItemPage({super.key});

  @override
  State<UploadItemPage> createState() => _UploadItemPageState();
}

class _UploadItemPageState extends State<UploadItemPage> {
  late PageController _controller;

  @override
  void initState() {
    _controller = PageController();
    super.initState();
  }

  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double width = SizeConfig.screenW!;
    double height = SizeConfig.screenH!;

    void toNextPage() {
      _controller.nextPage(
        duration: const Duration(milliseconds: 200),
        curve: Curves.easeIn,
      );
    }

    return PageScaffold(
      title: "Add Item",
      child: PageView(
        physics: const ClampingScrollPhysics(),
        controller: _controller,
        onPageChanged: (value) => setState(() => _currentPage = value),
        children: [
          _AddItemPage1(
            onPressed: toNextPage,
          ),
          _AddItemPage2()
        ],
      ),
    );
  }
}

class _AddItemPage1 extends StatefulWidget {
  final VoidCallback onPressed;

  const _AddItemPage1({super.key, required this.onPressed});

  @override
  State<_AddItemPage1> createState() => __AddItemPage1State();
}

class __AddItemPage1State extends State<_AddItemPage1> {
  final suggestions = [
    "Lagos, Nigeria",
    "London, United Kingdom",
    "Paris,France",
    "New York City,United States"
  ];

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double width = SizeConfig.screenW!;
    double height = SizeConfig.screenH!;

    return SizedBox(
      width: width * 0.9,
      child: Column(
        children: [
          const Text('Make your items visible. 1 / 2'),
             Column(
              children: [
                Text(
                  "Category*",
                ),
                Autocomplete(
                  optionsBuilder: (TextEditingValue textEditingValue) {
                    if (textEditingValue.text == '') {
                      return const Iterable<String>.empty();
                    } else {
                      List<String> matches = <String>[];
                      matches.addAll(
                          ProductCategory.values.map((e) => e.name).toList());
                      matches.retainWhere((s) {
                        return s
                            .toLowerCase()
                            .contains(textEditingValue.text.toLowerCase());
                      });
                      return matches;
                    }
                  },
                  onSelected: (String selection) {
                    print('You just selected $selection');
                  },
                )
              ],
            ),
          Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Location*"),
                Autocomplete(
                  optionsBuilder: (TextEditingValue textEditingValue) {
                    if (textEditingValue.text == '') {
                      return const Iterable<String>.empty();
                    } else {
                      List<String> matches = <String>[];
                      matches.addAll(suggestions);
                      matches.retainWhere((s) {
                        return s
                            .toLowerCase()
                            .contains(textEditingValue.text.toLowerCase());
                      });
                      return matches;
                    }
                  },
                  onSelected: (String selection) {
                    print('You just selected $selection');
                  },
                )
              ],
            ),
            Column(
              children: [
                Text("Title*"),
                CustomTextField(
                  label: "Enter Title",
                )
              ],
            ),
            Column(
              children: [
                Text("Description*"),
                Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: TextField(
                      maxLength: 100, // Set the maximum number of characters
                      decoration: InputDecoration(
                        labelText: 'Describe Item',
                        border: OutlineInputBorder(),
                      ),
                    ))
              ],
            ),
          WideButton(
              onPressed: widget.onPressed,
              buttonText: "CONTINUE",
              isSmallScreen: (width <= 550),
              fontSize: (width <= 550) ? 13 : 17),
        ],
      ),
    );
  }
}

class _AddItemPage2 extends StatefulWidget {
  const _AddItemPage2({super.key});

  @override
  State<_AddItemPage2> createState() => __AddItemPage2State();
}

class __AddItemPage2State extends State<_AddItemPage2> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
