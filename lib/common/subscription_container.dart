import 'package:animal/screens/utils/text_styles.dart';
import 'package:flutter/material.dart';

class SubscriptionContainer extends StatelessWidget {
  final String amount, text, imagePath;

  const SubscriptionContainer({Key key, this.amount, this.text, this.imagePath})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: ColorFiltered(
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.5), BlendMode.srcATop),
              child: Image.asset(
                imagePath,
                height: height * 0.6 / 4,
                width: width - 32,
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          Positioned(
            top: 0,
            bottom: 0,
            left: 35,
            right: 35,
            child: Row(
              children: [
                Text(
                  text,
                  style: TextStyles.subscriptionTextStyle,
                ),
                Spacer(),
                Text(
                  '\$ $amount',
                  style: TextStyles.subscriptionAmountTextStyle,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
