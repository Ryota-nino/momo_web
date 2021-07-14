import 'package:flutter/material.dart';
import 'package:momo_web/constants.dart';
import 'package:momo_web/responsive.dart';

class TodaysTask extends StatelessWidget {
  const TodaysTask({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Today's Task",
              style: Theme.of(context).textTheme.subtitle1,
            ),
            ElevatedButton.icon(
              onPressed: () {},
              style: TextButton.styleFrom(
                padding: EdgeInsets.symmetric(
                  horizontal: defaultPadding * 1.5,
                  vertical:
                      defaultPadding / (Responsive.isMobile(context) ? 2 : 1),
                ),
                backgroundColor: primaryColor,
              ),
              icon: Icon(Icons.add),
              label: Text("Add Task"),
            ),
          ],
        )
      ],
    );
  }
}
