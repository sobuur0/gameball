import 'package:flutter/material.dart';

class ReferralStages extends StatelessWidget {
  final double topPadding;
  final String stepNumber;
  final String stepDesc;
  final IconData? stepIcon;

  const ReferralStages({
    required this.topPadding,
    required this.stepNumber,
    required this.stepDesc,
    this.stepIcon,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(left: 20.0, top: topPadding),
          child: Row(
            children: <Widget>[
              Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 8.0,
                ),
                height: 40.0,
                width: 40.0,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(24.0),
                    borderSide: const BorderSide(
                      color: Color(0xFF9B9B9B),
                    ),
                  ),
                ),
                child: Text(
                  stepNumber,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                  ),
                ),
              ),
              const SizedBox(
                width: 10.0,
              ),
              Text(
                stepDesc,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                ),
              ),
              Icon(stepIcon),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 30.0,
          ),
          child: SizedBox(
            height: 30.0,
            child: VerticalDivider(
              width: 20,
              thickness: 1,
              indent: 0,
              endIndent: 0,
              color: Color(0xFF9B9B9B),
            ),
          ),
        ),
      ],
    );
  }
}
