import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:gameball/widgets/action_card.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  late GestureRecognizer _gestureRecognizer;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        body: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  height: size.height * 0.25,
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
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 170.0, 20.0, 0),
                  child: _buildSignupCard(size),
                ),
              ],
            ),
            Row(
              children: const [
                Expanded(
                  child: ActionCard(
                    action: 'Earn',
                    actionIcon: Icons.cancel,
                  ),
                ),
                Expanded(
                  child: ActionCard(
                    action: 'Redeem',
                    actionIcon: Icons.cancel,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSignupCard(Size size) {
    return Container(
      height: size.height * 0.35,
      width: size.width * 0.9,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Column(
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.symmetric(
              vertical: 20.0,
            ),
            child: Text(
              'Signup now and join our\n rewards program!',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 10.0,
            ),
            child: Image.asset(
              'images/testAsset.png',
              height: 70.0,
              color: Colors.yellow.shade800,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 10.0,
            ),
            child: ElevatedButton(
              onPressed: () {},
              //TODO: style this button
              child: const Text(
                'Join Now',
                style: TextStyle(
                  fontSize: 12.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          Text.rich(
            TextSpan(
              children: [
                const TextSpan(
                  text: 'Already have an account?',
                ),
                TextSpan(
                  //TODO: add oClick to this text
                  text: ' Sign In',
                  style: TextStyle(
                    color: Colors.yellow.shade600,
                  ),
                ),
              ],
            ),
          ),
        ],
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
        color: Colors.yellow.shade600,
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
