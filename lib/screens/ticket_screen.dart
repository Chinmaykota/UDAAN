import 'package:barcode_widget/barcode_widget.dart';
import 'package:booktickets/screens/ticket_view.dart';
import 'package:booktickets/utils/app_info_list.dart';
import 'package:booktickets/utils/app_layout.dart';
import 'package:booktickets/utils/app_styles.dart';
import 'package:booktickets/widgets/column_layout.dart';
import 'package:booktickets/widgets/ticket_tabs.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../widgets/layout_builder_widget.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Stack(children: [
        ListView(
          padding: EdgeInsets.symmetric(
              horizontal: AppLayout.getWidth(context, 20),
              vertical: AppLayout.getHeight(context, 20)),
          children: [
            Gap(AppLayout.getHeight(context, 40)),
            Text("Tickets", style: Styles.headLineStyle1),
            Gap(AppLayout.getHeight(context, 20)),
            const AppTicketTabs(firstTab: "Upcoming", secondTab: "Previous"),
            Gap(AppLayout.getHeight(context, 20)),
            Container(
              padding: EdgeInsets.only(left: AppLayout.getHeight(context, 15)),
              child: TicketView(ticket: ticketList[0], isColor: true),
            ),
            SizedBox(height: 1),
            Container(
              padding: EdgeInsets.symmetric(
                  horizontal: AppLayout.getWidth(context, 15),
                  vertical: AppLayout.getHeight(context, 20)),
              margin: EdgeInsets.symmetric(
                  horizontal: AppLayout.getWidth(context, 15)),
              color: Colors.white,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppColumnLayout(
                        firstText: "Flutter DB",
                        secondText: "Passenger",
                        alignment: CrossAxisAlignment.start,
                        isColor: false,
                      ),
                      AppColumnLayout(
                        firstText: "5221 197447",
                        secondText: "Passport",
                        alignment: CrossAxisAlignment.end,
                        isColor: false,
                      ),
                    ],
                  ),
                  Gap(AppLayout.getHeight(context, 20)),
                  const AppLayoutBuilderWidget(
                    sections: 15,
                    width: 5,
                    isColor: false,
                  ),
                  Gap(AppLayout.getHeight(context, 20)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppColumnLayout(
                        firstText: " 4874 174 65298",
                        secondText: "Number of E-ticket",
                        alignment: CrossAxisAlignment.start,
                        isColor: false,
                      ),
                      AppColumnLayout(
                        firstText: "B2SG28",
                        secondText: "Booking Code",
                        alignment: CrossAxisAlignment.end,
                        isColor: false,
                      ),
                    ],
                  ),
                  Gap(AppLayout.getHeight(context, 20)),
                  const AppLayoutBuilderWidget(
                    sections: 15,
                    width: 5,
                    isColor: false,
                  ),
                  Gap(AppLayout.getHeight(context, 20)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              Image.asset("assets/images/visa.png", scale: 11),
                              Text(
                                " *** 2462",
                                style: Styles.headLineStyle3,
                              )
                            ],
                          ),
                          Gap(AppLayout.getHeight(context, 5)),
                          Text("Payment method", style: Styles.headLineStyle4),
                        ],
                      ),
                      AppColumnLayout(
                        firstText: "\$249.99",
                        secondText: "Price",
                        alignment: CrossAxisAlignment.end,
                        isColor: false,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 1),
            Container(
              margin: EdgeInsets.only(
                  left: AppLayout.getHeight(context, 15),
                  right: AppLayout.getHeight(context, 15)),
              padding: EdgeInsets.only(
                  top: AppLayout.getHeight(context, 20),
                  bottom: AppLayout.getHeight(context, 20)),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    bottomRight:
                        Radius.circular(AppLayout.getHeight(context, 21)),
                    bottomLeft:
                        Radius.circular(AppLayout.getHeight(context, 21))),
              ),
              child: Container(
                padding: EdgeInsets.symmetric(
                    horizontal: AppLayout.getWidth(context, 15)),
                child: ClipRRect(
                  borderRadius:
                      BorderRadius.circular(AppLayout.getHeight(context, 15)),
                  child: BarcodeWidget(
                      data: 'https://github.com/martinovovo',
                      barcode: Barcode.code128(),
                      drawText: false,
                      color: Styles.textColor,
                      width: double.infinity,
                      height: 70),
                ),
              ),
            ),
            Gap(AppLayout.getHeight(context, 20)),
            Container(
              padding: EdgeInsets.only(left: AppLayout.getHeight(context, 15)),
              child: TicketView(ticket: ticketList[0]),
            ),
          ],
        ),
        Positioned(
          left: AppLayout.getHeight(context, 25),
          top: AppLayout.getHeight(context, 295),
          child: Container(
              padding: EdgeInsets.all(AppLayout.getHeight(context, 3)),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Styles.textColor, width: 2)),
              child: CircleAvatar(
                maxRadius: 4,
                backgroundColor: Styles.textColor,
              )),
        ),
        Positioned(
          right: AppLayout.getHeight(context, 25),
          top: AppLayout.getHeight(context, 295),
          child: Container(
              padding: EdgeInsets.all(AppLayout.getHeight(context, 3)),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Styles.textColor, width: 2)),
              child: CircleAvatar(
                maxRadius: 4,
                backgroundColor: Styles.textColor,
              )),
        ),
      ]),
    );
  }
}
