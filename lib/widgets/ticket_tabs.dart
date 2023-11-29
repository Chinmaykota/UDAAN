import 'package:flutter/material.dart';

import '../utils/app_layout.dart';

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
        child: Row(
          children: [
            // Airline Ticket
            Container(
              padding: EdgeInsets.symmetric(
                  vertical: AppLayout.getHeight(context, 7)),
              width: size.width * .44,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.horizontal(
                    left: Radius.circular(
                  AppLayout.getHeight(context, 50),
                )),
              ),
              child: Center(child: Text(firstTab)),
            ),
            // Hotels
            Container(
              padding: EdgeInsets.symmetric(
                  vertical: AppLayout.getHeight(context, 7)),
              width: size.width * .44,
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.horizontal(
                    right: Radius.circular(
                  AppLayout.getHeight(context, 50),
                )),
              ),
              child: Center(child: Text(secondTab)),
            ),
          ],
        ),
        decoration: BoxDecoration(
          color: const Color(0xFFF4F6FD),
          borderRadius: BorderRadius.circular(
            AppLayout.getHeight(context, 50),
          ),
        ),
      ),
    );
  }
}
