import 'package:flutter/material.dart';
import 'package:flutter_ticketing/utils/app_layout.dart';

class AppTicketTabs extends StatelessWidget {
  final String firstTab;
  final String secondTab;

  const AppTicketTabs(
      {super.key, required this.firstTab, required this.secondTab});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return FittedBox(
      child: Container(
        padding: const EdgeInsets.all(3.5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: Colors.grey.shade300,
        ),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 7),
              width: size.width * 0.44,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.horizontal(
                  left: Radius.circular(50),
                ),
                color: Colors.white,
              ),
              child: Center(
                child: Text(firstTab),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 7),
              width: size.width * 0.44,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.horizontal(
                  right: Radius.circular(50),
                ),
                color: Colors.transparent,
              ),
              child:  Center(
                child: Text(secondTab),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
