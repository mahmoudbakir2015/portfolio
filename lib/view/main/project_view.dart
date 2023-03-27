import 'package:flutter/material.dart';
import 'package:portfolio/constant/colors.dart';
import 'package:portfolio/responsive/responsive.dart';
import '../../models/projects.dart';
import '../../widgets/main/build_grid_view.dart';
import '../../widgets/main/project_card.dart';

class Projects extends StatelessWidget {
  const Projects({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: kDefaultPadding,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 20,
            ),
            child: Text(
              "My Projects",
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
          Responsive(
            desktop: buildGridView(
                itemCount: projects.length,
                crossAxisCount: 3,
                childAspectRatio: 0.7,
                itemBuilder: (BuildContext context, int i) {
                  return ProjectCard(
                    description: '${projects[i].description}',
                    name: '${projects[i].name}',
                    image: '${projects[i].images[0]['image']}',
                    index: i,
                  );
                }),
            tablet: buildGridView(
                itemCount: projects.length,
                crossAxisCount:
                    MediaQuery.of(context).size.width < 1000 ? 2 : 3,
                childAspectRatio: 0.7,
                itemBuilder: (BuildContext context, int i) {
                  return ProjectCard(
                    description: '${projects[i].description}',
                    name: '${projects[i].name}',
                    image: '${projects[i].images[0]['image']}',
                    index: i,
                  );
                }),
            mobileLarge: buildGridView(
                itemCount: projects.length,
                crossAxisCount: 2,
                childAspectRatio: 0.7,
                itemBuilder: (BuildContext context, int i) {
                  return ProjectCard(
                    description: '${projects[i].description}',
                    name: '${projects[i].name}',
                    image: '${projects[i].images[0]['image']}',
                    index: i,
                  );
                }),
            mobile: buildGridView(
                itemCount: projects.length,
                crossAxisCount: 1,
                childAspectRatio: 0.7,
                itemBuilder: (BuildContext context, int i) {
                  return ProjectCard(
                    description: '${projects[i].description}',
                    name: '${projects[i].name}',
                    image: '${projects[i].images[0]['image']}',
                    index: i,
                  );
                }),
          ),
        ],
      ),
    );
  }
}
