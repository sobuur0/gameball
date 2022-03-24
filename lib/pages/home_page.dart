import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: 200.0,
          decoration: const BoxDecoration(
            //TODO: change to required color
            color: Colors.yellow,
          ),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12.0,
                  vertical: 20.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    _buildFaqButton(),
                    const Icon(
                      Icons.cancel,
                      color: Colors.black,
                      size: 40.0,
                    ),
                  ],
                ),
              ),
              // const Text.rich(
              //   TextSpan(
              //     children: [
              //       TextSpan(
              //         text: 'Welcome to\n',
              //       ),
              //       TextSpan(
              //         text: 'Plus Rewards',
              //       ),
              //     ],
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildFaqButton() {
    return Container(
      height: 40.0,
      width: 70.0,
      decoration: BoxDecoration(
        //TODO: change to required color
        borderRadius: BorderRadius.circular(8.0),
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Container(
            decoration: ShapeDecoration(
              color: Colors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0),
              ),
            ),
            child: const Icon(
              Icons.question_mark_rounded,
              color: Colors.white,
              size: 20.0,
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
