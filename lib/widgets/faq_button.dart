import 'package:flutter/material.dart';

class FAQButton extends StatelessWidget {
  const FAQButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30.0,
      width: 60.0,
      decoration: BoxDecoration(
        //TODO: change to required color
        borderRadius: BorderRadius.circular(8.0),
        color: const Color(0xFFECC246),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            height: 20.0,
            width: 20.0,
            decoration: ShapeDecoration(
              color: Colors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0),
              ),
            ),
            child: const Icon(
              Icons.question_mark_rounded,
              color: Colors.white,
              size: 12.0,
            ),
          ),
          const Text(
            'FAQ',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
          ),
        ],
      ),
    );
  }
}
