import 'package:flutter/material.dart';

import '../../constant/colors.dart';

class Logo extends StatelessWidget {
  final String name, image, subTitle;
  Logo({
    required this.image,
    required this.name,
    required this.subTitle,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: Container(
        color: kSecondaryColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Spacer(
              flex: 2,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: kDefaultPadding,
              ),
              child: Image(
                image: AssetImage(
                  image,
                ),
                fit: BoxFit.cover,
              ),
            ),
            Spacer(
              flex: 2,
            ),
            Text(
              name,
              style: Theme.of(context).textTheme.subtitle2,
            ),
            Spacer(
              flex: 2,
            ),
            Text(
              subTitle,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w200,
                height: 1.5,
              ),
            ),
            Spacer(
              flex: 2,
            ),
          ],
        ),
      ),
    );
  }
}
