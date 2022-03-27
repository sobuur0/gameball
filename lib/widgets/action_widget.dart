import 'package:flutter/material.dart';

import 'action_card.dart';

class ActionWidget extends StatelessWidget {
  const ActionWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const <Widget>[
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(
              left: 10.0,
            ),
            child: ActionCard(
              action: 'Earn',
              actionIcon: Icons.volunteer_activism,
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(
              right: 10.0,
            ),
            child: ActionCard(
              action: 'Redeem',
              actionIcon: Icons.redeem,
            ),
          ),
        ),
      ],
    );
  }
}
