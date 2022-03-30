import 'package:flutter/material.dart';
import 'package:gameball/widgets/copy_button.dart';

class CopyReferralContainer extends StatelessWidget {
  final double textFieldHeight;
  final double copyButtonHeight;
  final double copyButtonWidth;

  const CopyReferralContainer({
    required this.textFieldHeight,
    required this.copyButtonHeight,
    required this.copyButtonWidth,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        children: [
          Expanded(
            child: SizedBox(
              height: textFieldHeight,
              child: TextField(
                // controller: _referralTextController,
                readOnly: true,
                decoration: InputDecoration(
                  enabled: false,
                  hintText: 'https://www.gameball.co/ulgG3',
                  contentPadding: const EdgeInsets.symmetric(
                    vertical: 10.0,
                    horizontal: 5.0,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
            ),
          ),
          CopyButton(
            height: copyButtonHeight,
            width: copyButtonWidth,
          ),
        ],
      ),
    );
  }
}
