import 'package:animal/common/custom_app_bar.dart';
import 'package:animal/common/subscription_container.dart';
import 'package:animal/screens/dashboard_screen.dart';
import 'package:flutter/material.dart';

import 'utils/strings.dart';
import 'utils/text_styles.dart';

class ChoosePlanScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFB98959),
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBar(),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 16.0, vertical: 24.0),
                child: Text(
                  Strings.chooseAPlan,
                  style: TextStyles.headingTextStyle,
                ),
              ),
              SubscriptionContainer(
                text: Strings.weekSubscription,
                amount: '1.99',
                imagePath: 'assets/weekly.jpeg',
              ),
              SubscriptionContainer(
                text: Strings.oneMonthSubscription,
                amount: '4.39',
                imagePath: 'assets/monthly.jpeg',
              ),
              SubscriptionContainer(
                text: Strings.threeMonthSubscription,
                amount: '9.99',
                imagePath: 'assets/3monthly.jpeg',
              ),
              SubscriptionContainer(
                text: Strings.sixMonthSubscription,
                amount: '13',
                imagePath: 'assets/sixmonthly.jpeg',
              )
            ],
          ),
          Positioned(
              bottom: 48,
              left: 16,
              child: Text(Strings.LAST_STEP_TO_ENJOY,
                  style: TextStyles.buttonTextStyle)),
          Positioned(
            bottom: -30,
            right: -30,
            child: InkWell(
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => DashboardScreen())),
              child: Container(
                width: 100,
                height: 100,
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
            ),
          ),
        ],
      ),
    );
  }
}
