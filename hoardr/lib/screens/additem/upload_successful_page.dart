
import 'package:flutter/material.dart';
import 'package:hoardr/gen/assets.gen.dart';
import 'package:hoardr/widgets/wide_button.dart';

class UploadSuccessfulPage extends StatelessWidget {
  const UploadSuccessfulPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            SizedBox(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Assets.pageIcons.cloud.image(),
                  Text("Item successfully Uploaded")
                ],
              ),
            ),
            WideButton(onPressed: () {}, buttonText:"CONTINUE")
          ],
        ),
        ),
    );
  }
}