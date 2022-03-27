import 'package:flutter/material.dart';
import 'package:gameball/widgets/faq_button.dart';

import '../constants.dart';

class DashBoardCard extends StatelessWidget {
  const DashBoardCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      height: size.height * 0.20,
      decoration: const BoxDecoration(
        color: kDashboardColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 12.0,
              vertical: 20.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const <Widget>[
                FAQButton(),
                Icon(
                  Icons.clear,
                  color: Colors.black,
                  size: 30.0,
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 12.0,
            ),
            child: Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: 'Welcome to\n',
                    style: TextStyle(fontSize: 14.0),
                  ),
                  TextSpan(
                    text: 'Plus Rewards',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
