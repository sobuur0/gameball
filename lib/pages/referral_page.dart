import 'package:flutter/material.dart';
import 'package:gameball/widgets/referral_stages.dart';

class ReferralPage extends StatefulWidget {
  const ReferralPage({Key? key}) : super(key: key);

  @override
  _ReferralPageState createState() => _ReferralPageState();
}

class _ReferralPageState extends State<ReferralPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        leading: const Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        title: const Text(
          'Referral',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 18.0,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 20.0,
              vertical: 10.0,
            ),
            child: Text(
              'We value friendship',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 20.0,
              vertical: 5.0,
            ),
            child: Text(
              'Follow the steps below and get rewarded',
              style: TextStyle(
                fontSize: 14.0,
              ),
            ),
          ),
          ReferralStages(
            topPadding: 30.0,
            stepNumber: '1',
            stepDesc: 'Share your link',
            stepIcon: Icons.copy,
          ),
          ReferralStages(
            topPadding: 0.0,
            stepNumber: '2',
            stepDesc: 'Your friend signup using your link',
          ),
          ReferralStages(
            topPadding: 0.0,
            stepNumber: '3',
            stepDesc: 'Your friend places an order',
          ),
        ],
      ),
    );
  }
}
