import 'package:flutter/material.dart';
import '../../constant/colors.dart';

GridView buildGridView({
  required int itemCount,
  required int crossAxisCount,
  required double childAspectRatio,
  required IndexedWidgetBuilder itemBuilder,
}) {
  return GridView.builder(
    itemCount: itemCount,
    shrinkWrap: true,
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: crossAxisCount,
      crossAxisSpacing: kDefaultPadding,
      mainAxisSpacing: kDefaultPadding,
      childAspectRatio: childAspectRatio,
    ),
    itemBuilder: itemBuilder,
  );
}