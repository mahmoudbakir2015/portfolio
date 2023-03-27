import 'package:flutter/material.dart';
import '../home_view.dart';
import 'client_recommends.dart';
import 'home_banner.dart';
import 'icon_info.dart';
import 'project_view.dart';

class MainSection extends StatelessWidget {
  const MainSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Home(
      mainSection: SingleChildScrollView(
        child: Column(
          children: [
            HomeBanner(),
            IconInfo(),
            Divider(),
            Projects(),
            Divider(),
            Recommendations(),
          ],
        ),
      ),
    );
  }
}
