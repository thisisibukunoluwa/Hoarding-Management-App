import 'package:hoardr/gen/assets.gen.dart';

class OnboardingContents {
  final String title;
  final String image;
  final String desc;

  OnboardingContents({
    required this.title,
    required this.image,
    required this.desc,
  });
}

List<OnboardingContents> contents = [
  OnboardingContents(
    title: "You clutter your space, we make it even better ",
    image: Assets.products.box.path,
    desc: "Your place doesn't need to look like a Nigerian cemetery before making it look livable, connect with the right audience today.",
  ),
  OnboardingContents(
    title: "Exchange sentiments for better.",
    image: Assets.pageIcons.people.path,
    desc:
        "Let us help you meet your needs, You can exchange that item you hold sentiments towards for a even better item.",
  ),
  OnboardingContents(
    title: "Place a bid on your old items",
    image: Assets.icons.bid.path,
    desc:
        "That precious item can give you an even better earning than you have imagined, get onboard today and start earning.",
  ),
];
