import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gameball/widgets/copy_referral_container.dart';
import 'package:gameball/widgets/referral_stages.dart';

class ReferralPage extends StatefulWidget {
  const ReferralPage({Key? key}) : super(key: key);

  @override
  _ReferralPageState createState() => _ReferralPageState();
}

class _ReferralPageState extends State<ReferralPage> {
  late TextEditingController _referralText;

  @override
  void initState() {
    _referralText = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _referralText.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
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
        children: <Widget>[
          const Padding(
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
          const Padding(
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
          const ReferralStages(
            topPadding: 30.0,
            stepNumber: '1',
            stepDesc: 'Share your link',
            stepIcon: Icons.copy,
          ),
          const ReferralStages(
            topPadding: 0.0,
            stepNumber: '2',
            stepDesc: 'Your friend signup using your link',
          ),
          const ReferralStages(
            topPadding: 0.0,
            stepNumber: '3',
            stepDesc: 'Your friend places an order',
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20.0,
            ),
            child: Container(
              height: size.height * 0.3,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                  borderSide: const BorderSide(
                    color: Color(0xFF9B9B9B),
                  ),
                ),
              ),
              child: Column(
                children: <Widget>[
                  _buildColumn(
                      whoGets: 'You get',
                      icon: Icons.score,
                      bonus: '50 Score | 10 Points (10 EGP)'),
                  _buildColumn(
                      whoGets: 'They get',
                      icon: Icons.redeem,
                      bonus: 'Discount coupon (10%)'),
                  const Spacer(),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 15.0,
                    ),
                    height: 90.0,
                    decoration: const BoxDecoration(
                      color: Colors.tealAccent,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(11.0),
                        bottomRight: Radius.circular(11.0),
                      ),
                    ),
                    child: Column(
                      children: <Widget>[
                        const Text(
                          'Refer 5 friends and get extra rewards',
                          style: TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const <Widget>[
                            Icon(Icons.account_balance_wallet_outlined),
                            SizedBox(
                              width: 5.0,
                            ),
                            Text(
                              'Free shipping',
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10.0,
              vertical: 15.0,
            ),
            child: CopyReferralContainer(
              onTap: () {
                Clipboard.setData(
                  ClipboardData(text: _referralText.text),
                );
              },
              controller: _referralText,
              textFieldHeight: 40.0,
              copyButtonHeight: 40.0,
              copyButtonWidth: 80.0,
            ),
          ),
        ],
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
    );
  }

  Widget _buildColumn({
    required IconData icon,
    required String whoGets,
    required String bonus,
  }) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              Icon(
                icon,
              ),
              const SizedBox(
                width: 3.0,
              ),
              Text(
                whoGets,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 27.0,
            ),
            child: Text(
              bonus,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
