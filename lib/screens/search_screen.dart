import 'package:flutter/material.dart';
import 'package:flutter_ticketing/utils/app_layout.dart';
import 'package:flutter_ticketing/utils/app_styles.dart';
import 'package:flutter_ticketing/widgets/double_text_widget.dart';
import 'package:flutter_ticketing/widgets/icon_text_widget.dart';
import 'package:flutter_ticketing/widgets/ticket_tabs.dart';
import 'package:gap/gap.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        physics: const AlwaysScrollableScrollPhysics(
          parent: BouncingScrollPhysics(),
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 20,
        ),
        children: [
          const Gap(40),
          Text(
            'What are\nyou looking for?',
            style: Styles.headLineStyle1.copyWith(fontSize: 35),
          ),
          const Gap(20),
          const AppTicketTabs(
            firstTab: 'Airline Tickets',
            secondTab: 'Hotels',
          ),
          const Gap(25),
          const AppIconText(
            icon: Icons.flight_takeoff_rounded,
            text: 'Departure',
          ),
          const Gap(15),
          const AppIconText(
            icon: Icons.flight_land_rounded,
            text: 'Arrival',
          ),
          const Gap(25),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color(0xD91130CE),
            ),
            child: Center(
              child: Text(
                'Find Tickets',
                style: Styles.textStyle.copyWith(color: Colors.white),
              ),
            ),
          ),
          const Gap(40),
          const AppDoubleTextWidget(
            bigText: 'Upcoming FLights',
            smallText: 'View All',
          ),
          const Gap(20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                // height: 425,
                width: size.width * 0.42,
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade200,
                      blurRadius: 1,
                      spreadRadius: 1,
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Container(
                      height: 190,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/images/sit.jpg'),
                        ),
                      ),
                    ),
                    const Gap(10),
                    Text(
                      '20% discount on the early booking of this flight. '
                      'Don\'t miss out this chance',
                      style: Styles.headLineStyle2,
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(15),
                        width: size.width * 0.44,
                        // height: 200,
                        decoration: BoxDecoration(
                          color: const Color(0xff3ab8b8),
                          borderRadius: BorderRadius.circular(18),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Discount\n for survey',
                              style: Styles.headLineStyle2.copyWith(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            const Gap(10),
                            Text(
                              'Take the survey about our services and get a discount',
                              style: Styles.headLineStyle2.copyWith(
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        right: -45,
                        top: -40,
                        child: Container(
                          padding: const EdgeInsets.all(30),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              width: 18,
                              color: const Color(0xff189999),
                            ),
                            color: Colors.transparent,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Gap(15),
                  Container(
                    padding: const EdgeInsets.all(15),
                    width: size.width * 0.44,
                    height: 210,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: const Color(0xffec6545),
                    ),
                    child: Column(
                      children: [
                        Text(
                          'Take Love',
                          style: Styles.headLineStyle2.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const Gap(5),
                        RichText(
                          text: const TextSpan(
                            children: [
                              TextSpan(
                                text: '🤗',
                                style: TextStyle(fontSize: 30),
                              ),
                              TextSpan(
                                text: '🤑',
                                style: TextStyle(fontSize: 42),
                              ),
                              TextSpan(
                                text: '🤠',
                                style: TextStyle(fontSize: 30),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
