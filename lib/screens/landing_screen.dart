import 'package:animal/common/custom_app_bar.dart';
import 'package:animal/screens/choose_plan_screen.dart';
import 'package:flutter/material.dart';

import 'utils/strings.dart';
import 'utils/text_styles.dart';

class LandingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Stack(children: [
      Image.asset(
        'assets/lion.jpg',
        height: height,
        fit: BoxFit.fitHeight,
      ),
      Column(
        children: [
          CustomAppBar(),
          Spacer(),
          Padding(
            padding:
                const EdgeInsets.only(bottom: 32.0, left: 32.0, right: 32.0),
            child: RichText(
                text: TextSpan(children: [
              TextSpan(
                  text: Strings.READY_TO_WATCH,
                  style: TextStyles.bigHeadingTextStyle),
              TextSpan(text: '\n'),
              TextSpan(
                  text: Strings.READY_TO_WATCH_DESC,
                  style: TextStyles.bodyTextStyle),
              TextSpan(text: '\n'),
              TextSpan(text: '\n'),
              TextSpan(
                  text: Strings.START_ENJOYING,
                  style: TextStyles.buttonTextStyle)
            ])),
          )
        ],
      ),
      Positioned(
          bottom: -30,
          right: -30,
          child: GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => ChoosePlanScreen()));
            },
            child: Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xFFDAD4CC).withOpacity(0.8)),
              child: Align(
                alignment: Alignment(-0.4, -0.4),
                child: Icon(
                  Icons.arrow_forward,
                  color: Colors.white,
                  size: 40,
                ),
              ),
            ),
          ))
    ]);
  }
}
