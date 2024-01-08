import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ticketing/utils/app_styles.dart';
import 'package:flutter_ticketing/widgets/column_layout.dart';
import 'package:flutter_ticketing/widgets/layout_builder_widget.dart';
import 'package:gap/gap.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        physics: const AlwaysScrollableScrollPhysics(
          parent: BouncingScrollPhysics(),
        ),
        padding: const EdgeInsets.all(20),
        children: [
          const Gap(40),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 94,
                width: 94,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/img_1.png'),
                  ),
                ),
              ),
              const Gap(10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Book Tickets',
                    style: Styles.headLineStyle1,
                  ),
                  const Gap(2),
                  Text(
                    'New-York',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey.shade500,
                    ),
                  ),
                  const Gap(8),
                  Container(
                    padding: const EdgeInsets.all(3),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: const Color(0xfffef4f3),
                    ),
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(3),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xff526799),
                          ),
                          child: const Icon(
                            FluentSystemIcons.ic_fluent_shield_filled,
                            color: Colors.white,
                            size: 15,
                          ),
                        ),
                        const Gap(5),
                        const Text(
                          'Premium Tears',
                          style: TextStyle(
                            color: Color(0xff526799),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const Gap(5),
                      ],
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Column(
                children: [
                  InkWell(
                    onTap: () {
                      print('you are tapped');
                    },
                    child: Text(
                      'Edit',
                      style: Styles.textStyle.copyWith(
                        color: Styles.primaryColor,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          const Gap(8),
          Divider(
            color: Colors.grey.shade300,
          ),
          const Gap(8),
          Stack(
            children: [
              Container(
                height: 90,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Styles.primaryColor,
                  borderRadius: BorderRadius.circular(18),
                ),
              ),
              Positioned(
                right: -45,
                top: -40,
                child: Container(
                  padding: const EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.transparent,
                    border: Border.all(
                      width: 18,
                      color: const Color(0xff264cd2),
                    ),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 20,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      maxRadius: 25,
                      backgroundColor: Colors.white,
                      child: Icon(
                        FluentSystemIcons.ic_fluent_lightbulb_filament_filled,
                        color: Styles.primaryColor,
                        size: 27,
                      ),
                    ),
                    const Gap(12),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'You\'ve got a new award',
                          style: Styles.headLineStyle3.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'You have 95 flights in a year',
                          style: Styles.headLineStyle3.copyWith(
                            fontWeight: FontWeight.w500,
                            color: Colors.white.withOpacity(0.9),
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          const Gap(25),
          Text(
            'Accumulated Miles',
            style: Styles.headLineStyle2,
          ),
          Column(
            children: [
              const Gap(15),
              Text(
                '192802',
                style: TextStyle(
                  fontSize: 45,
                  color: Styles.textColor,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const Gap(20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Miles Accrued',
                    style: Styles.headLineStyle4.copyWith(
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    '23 May 2021',
                    style: Styles.headLineStyle4.copyWith(
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              const Gap(20),
              Divider(
                color: Colors.grey.shade300,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppColumnLayout(
                    firstText: '23 042',
                    secondText: 'Miles',
                    alignment: CrossAxisAlignment.start,
                    isColor: true,
                  ),
                  AppColumnLayout(
                    firstText: 'Airline CO',
                    secondText: 'Received From',
                    alignment: CrossAxisAlignment.end,
                    isColor: true,
                  ),
                ],
              ),
              const Gap(12),
              const AppLayoutBuilderWidget(
                sections: 12,
                isColor: false,
              ),
              const Gap(12),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppColumnLayout(
                    firstText: '24',
                    secondText: 'Miles',
                    alignment: CrossAxisAlignment.start,
                    isColor: true,
                  ),
                  AppColumnLayout(
                    firstText: 'Macdonald\'s',
                    secondText: 'Received From',
                    alignment: CrossAxisAlignment.end,
                    isColor: true,
                  ),
                ],
              ),
              const Gap(12),
              const AppLayoutBuilderWidget(
                sections: 12,
                isColor: false,
              ),
              const Gap(12),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppColumnLayout(
                    firstText: '53 340',
                    secondText: 'Miles',
                    alignment: CrossAxisAlignment.start,
                    isColor: true,
                  ),
                  AppColumnLayout(
                    firstText: 'Exuma',
                    secondText: 'Received From',
                    alignment: CrossAxisAlignment.end,
                    isColor: true,
                  ),
                ],
              ),
              const Gap(24),
              Text(
                'How to get more miles',
                style: Styles.headLineStyle3.copyWith(
                  color: Styles.primaryColor,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
