import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../constant/colors.dart';

class ProjectCard extends StatelessWidget {
  final String image, name, description;
  final int index;
  const ProjectCard({
    required this.description,
    required this.name,
    required this.image,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(
        kDefaultPadding,
      ),
      color: kSecondaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            name,
            maxLines: 2,
            style: Theme.of(context).textTheme.subtitle2,
            overflow: TextOverflow.ellipsis,
          ),
          SizedBox(
            height: 20,
          ),
          Image.asset(
            image,
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Summery :",
            maxLines: 2,
            style: Theme.of(context).textTheme.subtitle2,
            overflow: TextOverflow.ellipsis,
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: Text(
              description,
              style: TextStyle(
                height: 1.5,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextButton(
            onPressed: () {
              Get.toNamed("/projectDetails", arguments: [
                {
                  "id": index,
                }
              ]);
            },
            child: Text(
              "More Details >",
              style: TextStyle(
                color: kPrimaryColor,
              ),
            ),
          )
        ],
      ),
    );
  }
}
