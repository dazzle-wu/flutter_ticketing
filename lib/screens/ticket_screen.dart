import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ticketing/screens/ticket_view.dart';
import 'package:flutter_ticketing/utils/app_info_list.dart';
import 'package:flutter_ticketing/utils/app_styles.dart';
import 'package:flutter_ticketing/widgets/column_layout.dart';
import 'package:flutter_ticketing/widgets/layout_builder_widget.dart';
import 'package:flutter_ticketing/widgets/ticket_tabs.dart';
import 'package:gap/gap.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Stack(
        children: [
          ListView(
            physics: const AlwaysScrollableScrollPhysics(
              parent: BouncingScrollPhysics(),
            ),
            padding: const EdgeInsets.all(20),
            children: [
              const Gap(40),
              Text(
                'Tickets',
                style: Styles.headLineStyle1,
              ),
              const Gap(20),
              const AppTicketTabs(
                firstTab: 'Upcoming',
                secondTab: 'Previous',
              ),
              const Gap(20),
              Container(
                padding: const EdgeInsets.only(left: 15),
                child: TicketView(
                  ticket: ticketList[0],
                  isColor: true,
                ),
              ),
              const SizedBox(
                height: 1,
              ),
              Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(21),
                    bottomLeft: Radius.circular(21),
                  ),
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 20,
                ),
                margin: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppColumnLayout(
                          firstText: 'Flutter DB',
                          secondText: 'Passenger',
                          alignment: CrossAxisAlignment.start,
                          isColor: true,
                        ),
                        AppColumnLayout(
                          firstText: '5221345678',
                          secondText: 'Passport',
                          alignment: CrossAxisAlignment.end,
                          isColor: true,
                        ),
                      ],
                    ),
                    const Gap(20),
                    const AppLayoutBuilderWidget(
                      sections: 6,
                      isColor: true,
                    ),
                    const Gap(20),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppColumnLayout(
                          firstText: '4545464464747444',
                          secondText: 'Number of E-Ticket',
                          alignment: CrossAxisAlignment.start,
                          isColor: true,
                        ),
                        AppColumnLayout(
                          firstText: 'B4545454',
                          secondText: 'Booking Code',
                          alignment: CrossAxisAlignment.end,
                          isColor: true,
                        ),
                      ],
                    ),
                    const Gap(20),
                    const AppLayoutBuilderWidget(
                      sections: 6,
                      isColor: true,
                    ),
                    const Gap(20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  'assets/images/visa.png',
                                  scale: 11,
                                ),
                                Text(
                                  ' *** 234',
                                  style: Styles.headLineStyle3,
                                ),
                              ],
                            ),
                            const Gap(5),
                            Text(
                              'Payment Method',
                              style: Styles.headLineStyle4,
                            ),
                          ],
                        ),
                        const AppColumnLayout(
                          firstText: '\$249.99',
                          secondText: 'Price',
                          alignment: CrossAxisAlignment.end,
                          isColor: true,
                        ),
                      ],
                    ),
                    const Gap(20),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: BarcodeWidget(
                          data: 'https://github.com/themistdev',
                          barcode: Barcode.code128(),
                          drawText: false,
                          color: Styles.textColor,
                          width: double.infinity,
                          height: 70,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Gap(20),
              Container(
                padding: const EdgeInsets.only(left: 15),
                child: TicketView(
                  ticket: ticketList[0],
                ),
              ),
            ],
          ),
          Positioned(
            left: 22,
            top: 295,
            child: Container(
              padding: const EdgeInsets.all(3),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Styles.textColor,
                  width: 2,
                ),
              ),
              child: CircleAvatar(
                maxRadius: 4,
                backgroundColor: Styles.textColor,
              ),
            ),
          ),
          Positioned(
            right: 22,
            top: 295,
            child: Container(
              padding: const EdgeInsets.all(3),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Styles.textColor,
                  width: 2,
                ),
              ),
              child: CircleAvatar(
                maxRadius: 4,
                backgroundColor: Styles.textColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
