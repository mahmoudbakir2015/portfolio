import 'package:flutter/material.dart';
import 'package:portfolio/constant/colors.dart';
import '../../models/recommendation.dart';
import '../../widgets/main/reccomendation_card.dart';

class Recommendations extends StatelessWidget {
  const Recommendations({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(
        kDefaultPadding,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Client Recommendation",
            style: Theme.of(context).textTheme.headline6,
          ),
          SizedBox(
            height: 10,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                recommendations.length,
                (index) => Padding(
                  padding: const EdgeInsets.only(right: kDefaultPadding),
                  child: ReccomendationCard(
                    image: '${recommendations[index].image}',
                    name: '${recommendations[index].name}',
                    title: '${recommendations[index].source}',
                    description: '${recommendations[index].text}',
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
