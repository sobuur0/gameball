import 'package:flutter/material.dart';
import 'package:gameball/constants.dart';

class ReferralBonus extends StatelessWidget {
  final String owner;
  final String bonus;

  const ReferralBonus({
    required this.owner,
    required this.bonus,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 10.0,
      ),
      child: Row(
        children: [
          const Icon(
            Icons.circle,
            color: Colors.yellow,
            size: 10.0,
          ),
          const SizedBox(
            width: 5.0,
          ),
          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: owner,
                ),
                TextSpan(
                  text: bonus,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
