import 'package:flutter/material.dart';
import 'package:portfolio/constant/colors.dart';
import '../responsive/responsive.dart';
import 'menu/side_menu.dart';

class Home extends StatelessWidget {
  final Widget mainSection;
  Home({
    required this.mainSection,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Responsive.isDesktop(context)
          ? null
          : AppBar(
              backgroundColor: kBgColor,
              leading: Builder(
                builder: (context) => IconButton(
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  icon: Icon(
                    Icons.menu,
                  ),
                ),
              ),
            ),
      drawer: SlideMenuSection(),
      body: SafeArea(
        child: Container(
          constraints: BoxConstraints(
            maxWidth: 1366,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (Responsive.isDesktop(context))
                Expanded(
                  flex: 2,
                  child: SlideMenuSection(),
                ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                flex: 7,
                child: mainSection,
              ),
              SizedBox(
                width: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
