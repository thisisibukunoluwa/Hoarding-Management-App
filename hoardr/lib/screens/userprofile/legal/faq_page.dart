import 'package:flutter/material.dart';
import 'package:hoardr/models/faqItems_list.dart';
import 'package:hoardr/models/faqItems_list.dart';

class FaqPage extends StatefulWidget {
  const FaqPage({super.key});

  @override
  State<FaqPage> createState() => _FaqPageState();
}

FaqItem faqItem = FaqItem('Sample Title', 'Sample Body');

class _FaqPageState extends State<FaqPage> {
  final List<FaqItem> _faqItems = faqItem.getFaqItems();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: _renderItems(),
      ),
    );
  }

  Widget _renderItems() {
    return ExpansionPanelList.radio(
         expandedHeaderPadding: EdgeInsets.all(0),
        expansionCallback: (int index, bool isExpanded) {
          setState(() {
            _faqItems[index].isExpanded = !isExpanded;
          });
        },
        children: _faqItems.map<ExpansionPanel>((FaqItem item) {
          return ExpansionPanel(
              headerBuilder: (context, isExpanded) {
                return Container(
                  decoration: BoxDecoration(
                    boxShadow: []
                  ),
                  child: ExpansionTile(title: Text(item.title)),
                );
              },
              body: Container(
                decoration: BoxDecoration(
                  boxShadow: []
                ),
                child: ExpansionTile(title: Text(item.body)),
              ),
              isExpanded: item.isExpanded);
        }).toList());
  }
}
