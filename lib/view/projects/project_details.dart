import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/constant/colors.dart';
import 'package:portfolio/models/projects.dart';

class ProjectDetails extends StatelessWidget {
  int i = Get.arguments[0]["id"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kBgColor,
        centerTitle: true,
        title: Text("${projects[i].name}"),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: kDefaultPadding,
              ),
              child: Text(
                "بعض الصور من داخل التطبيق",
                style: Theme.of(context).textTheme.headline5,
              ),
            ),
            Expanded(
              child: Container(
                child: GridView.builder(
                    itemCount: projects[i].images.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 0.7,
                      crossAxisCount: responsive(
                        MediaQuery.of(context).size.width.toInt(),
                      ),
                    ),
                    itemBuilder: (BuildContext context, int j) {
                      return Container(
                        padding: EdgeInsets.all(kDefaultPadding),
                        color: kSecondaryColor,
                        margin: EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              "${projects[i].images[j]['image']}",
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "Summery",
                              style: Theme.of(context).textTheme.subtitle2,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "${projects[i].images[j]['description']}",
                              overflow: TextOverflow.ellipsis,
                              maxLines: 10,
                              style: TextStyle(
                                height: 1.5,
                              ),
                            ),
                          ],
                        ),
                      );
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }

  int responsive(int size) {
    if (size >= 1024) {
      return 3;
    } else if (size >= 750) {
      return 2;
    } else {
      return 1;
    }
  }
}
