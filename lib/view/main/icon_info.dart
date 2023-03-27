import 'package:flutter/material.dart';
import 'package:portfolio/constant/colors.dart';
import 'package:portfolio/responsive/responsive.dart';
import '../../widgets/main/icon_info_card.dart';

class IconInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Responsive.isMobile(context)
          ? Column(
              children: [
                Row(children: [
                  Expanded(
                    child: buildIconDetails(
                      context: context,
                      icon: Icons.people,
                      count: 47,
                      text: "Client",
                    ),
                  ),
                  Expanded(
                    child: buildIconDetails(
                      context: context,
                      icon: Icons.location_on,
                      count: 139,
                      text: "People",
                    ),
                  ),
                ]),
                SizedBox(
                  height: kDefaultPadding * 3,
                ),
                Row(
                  children: [
                    Expanded(
                      child: buildIconDetails(
                        context: context,
                        icon: Icons.public,
                        count: 150,
                        text: "Countries",
                      ),
                    ),
                    Expanded(
                      child: buildIconDetails(
                        context: context,
                        icon: Icons.star,
                        count: 90,
                        text: "Stars",
                      ),
                    ),
                  ],
                ),
              ],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                buildIconDetails(
                  context: context,
                  icon: Icons.people,
                  count: 47,
                  text: "Client",
                ),
                buildIconDetails(
                  context: context,
                  icon: Icons.location_on,
                  count: 139,
                  text: "People",
                ),
                buildIconDetails(
                  context: context,
                  icon: Icons.public,
                  count: 150,
                  text: "Countries",
                ),
                buildIconDetails(
                  context: context,
                  icon: Icons.star,
                  count: 90,
                  text: "Stars",
                ),
              ],
            ),
    );
  }
}
