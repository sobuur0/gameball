import 'package:flutter/material.dart';
import 'package:gameball/constants.dart';
import 'package:gameball/pages/home_page.dart';
import 'package:gameball/widgets/action_card.dart';
import 'package:gameball/widgets/dashboard_card.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  // late GestureRecognizer _gestureRecognizer;
  //
  // @override
  // void initState() {
  //   super.initState();
  //   _gestureRecognizer = TapGestureRecognizer()
  //     ..onTap = _handleSignIn() as GestureTapCallback?;
  // }
  //
  // @override
  // void dispose() {
  //   _gestureRecognizer.dispose();
  //   super.dispose();
  // }
  //
  // Future _handleSignIn() {
  //   HapticFeedback.vibrate();
  //   return Navigator.push(
  //     context,
  //     MaterialPageRoute(
  //       builder: (context) => const HomePage(),
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  const DashBoardCard(),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20.0, 130.0, 20.0, 0),
                    child: _buildSignupCard(size),
                  ),
                ],
              ),
              Row(
                children: const <Widget>[
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 10.0,
                      ),
                      child: ActionCard(
                        action: 'Earn',
                        actionIcon: Icons.volunteer_activism,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(
                        right: 10.0,
                      ),
                      child: ActionCard(
                        action: 'Redeem',
                        actionIcon: Icons.redeem,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20.0, 0, 20.0, 20.0),
                child: Container(
                  height: size.height * 0.15,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    color: Colors.white,
                  ),
                  child: Stack(
                    children: <Widget>[
                      const Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 10.0,
                          vertical: 30.0,
                        ),
                        child: Icon(
                          Icons.line_style,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20.0,
                          vertical: 30.0,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 40.0,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const <Widget>[
                                  Text(
                                    'Levels',
                                    style: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5.0,
                                  ),
                                  Text(
                                    'Collect discount\n points and level up!',
                                  ),
                                ],
                              ),
                            ),
                            Icon(
                              Icons.chevron_right,
                              color: Colors.yellow.shade700,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Container(
          height: 40.0,
          decoration: const BoxDecoration(
            color: Colors.white,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const <Widget>[
              Text('Powered by'),
              // Image.asset(),
              Text(' Gameball'),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSignupCard(Size size) {
    return Container(
      height: size.height * 0.35,
      width: size.width * 0.9,
      decoration: BoxDecoration(
        color: kCardColor,
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
            //TODO: replace this with correct asset
            child: Image.asset(
              'images/testAsset.png',
              height: 70.0,
              color: const Color(0xFFF6B74F),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 10.0,
            ),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomePage(),
                  ),
                );
              },
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
}
