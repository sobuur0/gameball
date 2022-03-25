import 'package:flutter/material.dart';
import 'package:gameball/constants.dart';
import 'package:gameball/widgets/action_card.dart';
import 'package:gameball/widgets/dashboard_card.dart';

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
                //TODO: replace both card with correct icons
                children: const <Widget>[
                  Expanded(
                    child: ActionCard(
                      action: 'Earn',
                      actionIcon: Icons.chevron_right,
                    ),
                  ),
                  Expanded(
                    child: ActionCard(
                      action: 'Redeem',
                      actionIcon: Icons.chevron_right,
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
                          horizontal: 20.0,
                          vertical: 30.0,
                        ),
                        child: Icon(
                          //TODO: replace icon with correct one
                          Icons.account_balance,
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
                                left: 60.0,
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
              onPressed: () {},
              //TODO: style this button to match ui
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
}
