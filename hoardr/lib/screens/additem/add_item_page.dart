import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:hoardr/gen/assets.gen.dart';
import 'package:hoardr/theme/colors.dart';
import 'package:hoardr/theme/font_weight.dart';
import 'package:hoardr/utils/size_config.dart';
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
          const SizedBox(
            height: 7,
          ),
          GestureDetector(
            onTap: () => context.go('upload-item'),
            child: SizedBox(
              height: 47.16.h,
              width: 353.7.w,
              child: Card(
                elevation: 0.4,
                shadowColor: const Color.fromARGB(255, 236, 234, 234),
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Assets.icons.uploadItem.image(),
                      const SizedBox(width: 7,),
                       Expanded(
                        child: Column(
                             mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Upload item", 
                              style: TextStyle(
                               color: AppColors.textColor1,
                              fontWeight: AppFontWeight.bold,
                              fontSize: 19.sp
                            )),
                            Text(
                                  "Have a new item? Upload by clicking on this button.",
                                  maxLines: 2)
                          ],
                        ),
                      )
                    ]
                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            child:SizedBox(
               height: 47.16.h,
               width: 353.7.w,
              child: Card(
                elevation: 0.4,
                shadowColor: const Color.fromARGB(255, 236, 234, 234),
                child: Padding(
                 padding: const EdgeInsets.all(12.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                       Assets.icons.viewInventory.image(),
                       const SizedBox(
                          width: 7,
                        ),
                      const Expanded(
                        child: Column(
                           mainAxisAlignment: MainAxisAlignment.spaceAround,
                           crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "View inventory",
                              style: TextStyle(
                                color: AppColors.textColor1,
                                fontSize: 19,
                              fontWeight: AppFontWeight.bold,
                               )
                              ),
                               Text(
                                    "View items uploaded, check quantity available and edit the item.",
                                     maxLines: 2
                                ),
                          ],
                        ),
                      )
                    ]
                  ),
                ),
              ),
            ),
          ),
        ],
      ),

    );
  }
}
