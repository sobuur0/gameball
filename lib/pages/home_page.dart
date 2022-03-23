import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: const BoxDecoration(
              //TODO: change to required color
              color: Colors.yellow,
            ),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Container(
                      decoration: const BoxDecoration(
                        //TODO: change to required color
                        color: Colors.yellowAccent,
                      ),
                      child: Row(
                        children: const <Widget>[
                          Icon(
                            Icons.question_mark_rounded,
                            color: Colors.black,
                          ),
                          Text(
                            'FAQ',
                          ),
                        ],
                      ),
                    ),
                    const Icon(
                      Icons.cancel,
                      color: Colors.black,
                    ),
                  ],
                ),
                const Text.rich(TextSpan(children: [
                  TextSpan(
                    text: 'Welcome to\n',
                  ),
                  TextSpan(
                    text: 'Plus Rewards',
                  ),
                ]))
              ],
            ),
          )
        ],
      ),
    );
  }
}
