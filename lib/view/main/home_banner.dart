import 'package:flutter/material.dart';
import 'package:portfolio/constant/colors.dart';

import '../../responsive/responsive.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.3,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            "assets/images/1.jpg",
            fit: BoxFit.cover,
          ),
          Container(
            color: kDarkColor.withOpacity(
              0.10,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: kDefaultPadding,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Build a great for us !",
                  style: Responsive.isDesktop(context)
                      ? Theme.of(context).textTheme.headline3!.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          )
                      : Theme.of(context).textTheme.headline5!.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                ),
                ElevatedButton(
                  style: TextButton.styleFrom(
                    backgroundColor: kPrimaryColor,
                    padding: EdgeInsets.symmetric(
                      horizontal: kDefaultPadding * 2,
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    "Contact Us",
                    style: TextStyle(
                      color: kDarkColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
