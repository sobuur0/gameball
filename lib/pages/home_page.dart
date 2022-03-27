import 'package:flutter/material.dart';
import 'package:gameball/constants.dart';
import 'package:gameball/widgets/action_widget.dart';
import 'package:gameball/widgets/dashboard_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        body: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                const DashBoardCard(),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 130.0, 20.0, 0),
                  child: _pointsContainer(size),
                ),
              ],
            ),
            const ActionWidget(),
          ],
        ),
      ),
    );
  }

  Widget _pointsContainer(Size size) {
    return Container(
      height: size.height * 0.095,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        color: kCardColor,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 10.0,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            const Icon(
              Icons.star,
              size: 30.0,
            ),
            const SizedBox(width: 8.0),
            const Text(
              'Points',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 18.0,
              ),
            ),
            const Spacer(),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 35.0,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const <Widget>[
                    Text(
                      '2,000',
                      style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Equals \$250',
                      style: TextStyle(
                        fontSize: 12.0,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
