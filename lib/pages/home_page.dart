import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        body: Container(
          height: size.height*0.25,
          decoration: BoxDecoration(
            //TODO: change to required color
            color: Colors.yellow.shade800,
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
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.0,),
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'Welcome to\n',
                        style: TextStyle(
                          fontSize: 14.0
                        ),
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
        ),
      ),
    );
  }

  Widget _buildFaqButton() {
    return Container(
      height: 40.0,
      width: 60.0,
      decoration: BoxDecoration(
        //TODO: change to required color
        borderRadius: BorderRadius.circular(8.0),
        color: Colors.yellow.shade700,
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
