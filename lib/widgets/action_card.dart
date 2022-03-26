import 'package:flutter/material.dart';
import 'package:gameball/constants.dart';

class ActionCard extends StatelessWidget {
  final String action;
  final IconData actionIcon;

  const ActionCard({
    required this.action,
    required this.actionIcon,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20.0,
        vertical: 20.0,
      ),
      child: Container(
        height: 150,
        decoration: BoxDecoration(
          color: kCardColor,
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(actionIcon),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    action,
                    style: const TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
              Icon(
                Icons.chevron_right,
                color: Colors.yellow.shade700,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
