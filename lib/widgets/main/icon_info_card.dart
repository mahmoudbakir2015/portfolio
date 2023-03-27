import 'package:flutter/material.dart';
import '../../constant/colors.dart';

Widget buildIconDetails({
  required IconData icon,
  required int count,
  required String text,
  required BuildContext context,
}) {
  return Column(
    children: [
      Icon(
        icon,
        color: Colors.white,
        size: 50,
      ),
      SizedBox(
        height: 10,
      ),
      Text(
        "${count} +",
        style: Theme.of(context).textTheme.headline6!.copyWith(
          color: kPrimaryColor,
          fontSize: 30,
        ),
      ),
      Text(
        text,
        style: Theme.of(context).textTheme.subtitle2,
      ),
    ],
  );
}