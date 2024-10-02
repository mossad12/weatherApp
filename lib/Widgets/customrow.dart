import 'package:flutter/material.dart';

import 'custom_container.dart';

class Customrow extends StatelessWidget {
  Customrow(
      {Key? key,
      required this.image1,
      required this.image2,
      required this.name1,
      required this.name2,
      required this.desc1,
      required this.desc2})
      : super(key: key);
  String image1;
  String image2;
  String name1;
  String name2;
  String desc1;
  String desc2;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomContainer(
          image: image1,
          desc: desc1,
          name: name1,
        ),
        CustomContainer(
          image: image2,
          desc: desc2,
          name: name2,
        ),
      ],
    );
  }
}
