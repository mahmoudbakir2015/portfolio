import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'constant/colors.dart';
import 'view/main/main_section.dart';
import 'package:get/get.dart';

import 'view/projects/project_details.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'portFolio',
      theme: ThemeData.dark().copyWith(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: kBgColor,
        canvasColor: kBgColor,
        iconTheme: IconThemeData(
          color: KiconColor,
        ),
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
            .apply(
              bodyColor: Colors.white,
            )
            .copyWith(
              bodyText1: TextStyle(
                color: kBodyTextColor,
              ),
              bodyText2: TextStyle(
                color: kBodyTextColor,
              ),
            ),
      ),
      initialRoute: "/",
      getPages: [
        GetPage(
          name: "/",
          page: () => MainSection(),
        ),
        GetPage(
          name: "/projectDetails",
          page: () => ProjectDetails(),
          transitionDuration: Duration(
            seconds: 1,
          ),
          transition: Transition.rightToLeftWithFade,
        ),
      ],
    );
  }
}
