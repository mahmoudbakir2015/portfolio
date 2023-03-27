import 'package:flutter/material.dart';
import 'package:portfolio/constant/colors.dart';
import '../../widgets/menu/contact_info.dart';
import '../../widgets/menu/goals.dart';
import '../../widgets/menu/logo.dart';

class SlideMenuSection extends StatelessWidget {
  const SlideMenuSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            Logo(
              image: 'assets/images/1.jpg',
              name: 'my name',
              subTitle: 'hello wold this my page \n thank you for visiting.',
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ContactInfo(),
                    Divider(),
                    Goals(),
                    Divider(),
                    SizedBox(
                      height: 10,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: FittedBox(
                        child: Row(
                          children: [
                            Icon(
                              Icons.download,
                            ),
                            SizedBox(
                              width: kDefaultPadding / 2,
                            ),
                            Text(
                              "Download",
                              style: TextStyle(
                                  color: Theme.of(context)
                                      .textTheme
                                      .bodyText1!
                                      .color),
                            ),
                          ],
                        ),
                      ),
                    ),
                     Container(
                        padding: EdgeInsets.symmetric(
                    horizontal: kDefaultPadding,
                    ),
                        margin: EdgeInsets.only(
                          top: kDefaultPadding,
                          bottom: kDefaultPadding * 2,
                        ),
                        color: kSecondaryColor,
                        child: Row(
                          children: [
                            Spacer(),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.facebook,
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.email,
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.wordpress,
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.add_card,
                              ),
                            ),
                            Spacer(),
                          ],
                        ),
                      ),

                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
