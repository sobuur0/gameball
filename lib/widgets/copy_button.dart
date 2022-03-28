import 'package:flutter/material.dart';

class CopyButton extends StatefulWidget {
  const CopyButton({Key? key}) : super(key: key);

  @override
  _CopyButtonState createState() => _CopyButtonState();
}

class _CopyButtonState extends State<CopyButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30.0,
      width: 60.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        color: const Color(0xFFEDC143),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const <Widget>[
          Icon(
            Icons.copy,
            color: Colors.black,
            size: 14.0,
          ),
          Text(
            'Copy',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16.0,
            ),
          ),
        ],
      ),
    );
  }
}
