import 'package:flutter/material.dart';
import '../../constant/colors.dart';

class Goals extends StatelessWidget {
  const Goals({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            vertical: kDefaultPadding / 2,
          ),
          child: Text(
            "Goals :",
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        buildGoals(
          goal: "goal 1",
        ),
        buildGoals(
          goal: "goal 2",
        ),
        buildGoals(
          goal: "goal 3",
        ),buildGoals(
          goal: "goal 4",
        ),
      ],
    );
  }

  Widget buildGoals({
    required String goal,
  }) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 5,
      ),
      child: Row(
        children: [
          Icon(
            Icons.check,
          ),
          Text(
            goal,
          ),
        ],
      ),
    );
  }
}
