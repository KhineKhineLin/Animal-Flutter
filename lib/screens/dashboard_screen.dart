import 'package:animal/common/custom_app_bar.dart';
import 'package:flutter/material.dart';

import 'utils/strings.dart';
import 'utils/text_styles.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFB98959),
      body: Stack(
        fit: StackFit.expand,
        children: [
          FractionallySizedBox(
            alignment: Alignment.topCenter,
            heightFactor: 0.40,
            child: Container(
              child: Stack(
                children: [
                  Image.asset(
                    'assets/elephant.jpg',
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.fitWidth,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomAppBar(
                        opacity: 1,
                      ),
                      Expanded(
                          child: Align(
                        alignment: Alignment(0, -0.6),
                        child: Text(
                          Strings.welcomeToAplanet,
                          style: TextStyles.bigHeadingTextStyle,
                          textAlign: TextAlign.center,
                        ),
                      ))
                    ],
                  ),
                ],
              ),
            ),
          ),
          FractionallySizedBox(
            alignment: Alignment.bottomCenter,
            heightFactor: 0.65,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(top: Radius.circular(40)),
                color: Color(0xFFB98959),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 16),
                      child: Text(
                        Strings.relatedToYou,
                        style: TextStyles.buttonTextStyle,
                      )),
                  Expanded(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(left: 16),
                            width: MediaQuery.of(context).size.width * 0.5,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: ClipRRect(
                                    child: Image.asset(
                                      'assets/tiger.jpg',
                                      width: MediaQuery.of(context).size.width *
                                          0.5,
                                      fit: BoxFit.cover,
                                    ),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 6),
                                  child: Text(
                                    Strings.lifeWithATiger,
                                    style: TextStyles.titleTextStyle,
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 6),
                                  child: Text(
                                    Strings.loremIpsum,
                                    style: TextStyles.body3TextStyle,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.5,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                    child: ClipRRect(
                                  child: Image.asset(
                                    'assets/wild_animals.jpg',
                                    width:
                                        MediaQuery.of(context).size.width * 0.5,
                                    fit: BoxFit.cover,
                                  ),
                                  borderRadius: BorderRadius.circular(12),
                                )),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 6),
                                  child: Text(
                                    Strings.lifeWithATiger,
                                    style: TextStyles.titleTextStyle,
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 6),
                                  child: Text(
                                    Strings.loremIpsum,
                                    style: TextStyles.body3TextStyle,
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 16),
                    child: Text(
                      Strings.quickCategories,
                      style: TextStyles.titleTextStyle,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Column(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Color(0xFF865835)),
                              child: Image.asset(
                                'assets/bear.png',
                                height: 50,
                                width: 50,
                              ),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              Strings.bear,
                              style: TextStyles.body2TextStyle,
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Color(0xFF865835)),
                              child: Image.asset(
                                'assets/lion.png',
                                height: 50,
                                width: 50,
                              ),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              Strings.lion,
                              style: TextStyles.body2TextStyle,
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Color(0xFF865835)),
                              child: Image.asset(
                                'assets/reptiles.png',
                                height: 50,
                                width: 50,
                              ),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              Strings.reptiles,
                              style: TextStyles.body2TextStyle,
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Color(0xFF865835)),
                              child: Image.asset(
                                'assets/rabbit.png',
                                height: 50,
                                width: 50,
                              ),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              Strings.pets,
                              style: TextStyles.body2TextStyle,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 32,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
