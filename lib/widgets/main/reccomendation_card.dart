import 'package:flutter/material.dart';
import '../../constant/colors.dart';


class ReccomendationCard extends StatelessWidget {
  final String image,name,title,description;
  const ReccomendationCard({
    required this.image,
    required this.name,
    required this.title,
    required this.description,
});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kSecondaryColor,
      width: 300,
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            leading: CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage(
                image,
              ),
            ),
            title: Text(
              name,
              style: Theme.of(context).textTheme.subtitle2,
            ),
            subtitle: Text(
              title,
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ),
          Text(
            description,
            overflow: TextOverflow.ellipsis,
            maxLines: 4,
            style: TextStyle(
              height: 1.4,
            ),
          ),
        ],
      ),
    );
  }
}
