import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gameball/constants.dart';
import 'package:gameball/pages/referral_page.dart';
import 'package:gameball/widgets/action_widget.dart';
import 'package:gameball/widgets/copy_referral_container.dart';
import 'package:gameball/widgets/dashboard_card.dart';
import 'package:gameball/widgets/referral_bonus.dart';
import 'package:percent_indicator/percent_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double value = 1090.0;

  final TextEditingController _referralTextController =
      TextEditingController(text: 'https://www.gameball.co/ulgG3');

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        body: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                DashBoardCard(
                  onCancel: () {
                    Navigator.pop(context);
                  },
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 130.0, 20.0, 0),
                  child: _pointsContainer(size),
                ),
              ],
            ),
            const ActionWidget(),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
              ),
              child: _levelsContainer(size),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                height: size.height * 0.3,
                decoration: BoxDecoration(
                  color: kCardColor,
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10.0,
                        vertical: 20.0,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          const Text(
                            'Refer Your Friends',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const ReferralPage(),
                                ),
                              );
                            },
                            child: Icon(
                              Icons.chevron_right,
                              color: Colors.yellow.shade700,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const ReferralBonus(
                      owner: 'You get',
                      bonus: ' \$20 Coupon',
                    ),
                    const SizedBox(
                      height: 5.0,
                    ),
                    const ReferralBonus(
                      owner: 'They get',
                      bonus: ' Free Shipping Coupon',
                    ),
                    const SizedBox(
                      height: 8.0,
                    ),
                    CopyReferralContainer(
                      onTap: () {
                        Clipboard.setData(
                          ClipboardData(text: _referralTextController.text),
                        ).then(
                          (value) => ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text(
                                  'Your referral code was successfully copied'),
                            ),
                          ),
                        );
                      },
                      controller: _referralTextController,
                      textFieldHeight: 40.0,
                      copyButtonHeight: 40.0,
                      copyButtonWidth: 60.0,
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 10.0,
                        vertical: 8.0,
                      ),
                      child: Text(
                        'You have referred 0 friends',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: const <Widget>[
                          Icon(
                            Icons.facebook,
                            color: Colors.yellow,
                            size: 30.0,
                          ),
                          SizedBox(
                            width: 30.0,
                          ),
                          Icon(
                            Icons.snapchat,
                            color: Colors.yellow,
                            size: 30.0,
                          ),
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
    );
  }

  Widget _pointsContainer(Size size) {
    return Container(
      height: size.height * 0.08,
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

  Widget _levelsContainer(Size size) {
    return Container(
      height: size.height * 0.12,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        color: kCardColor,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 10.0,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            const Icon(Icons.line_style),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'Gold',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                        ),
                      ),
                      TextSpan(
                        text: ' (level 3)',
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15.0,
                ),
                const Text(
                  '1090 Points to Gold',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 8.0,
                ),
                LinearPercentIndicator(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 0.0,
                  ),
                  percent: 0.2,
                  progressColor: kProgressIndicatorColor,
                  lineHeight: 6.0,
                  width: 200.0,
                  backgroundColor: kProgressIndicatorBackgroundColor,
                  barRadius: const Radius.circular(5.0),
                ),
              ],
            ),
            Icon(
              Icons.chevron_right,
              color: Colors.yellow.shade700,
            ),
          ],
        ),
      ),
    );
  }
}
