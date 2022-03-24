import 'package:flutter/material.dart';

class ActionCard extends StatelessWidget {
  const ActionCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Row(
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const <Widget>[
              Icon(Icons.money),
              Text(
                'Earn',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
          const Icon(
            Icons.cancel,
          ),
        ],
      ),
    );
  }
}
