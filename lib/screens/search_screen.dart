import 'package:booktickets/utils/app_styles.dart';
import 'package:booktickets/widgets/icon_text_widget.dart';
import 'package:booktickets/widgets/ticket_tabs.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_layout.dart';
import '../widgets/double_text_widget.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: AppLayout.getWidth(context, 20),
            vertical: AppLayout.getHeight(context, 20)),
        children: [
          Gap(AppLayout.getHeight(context, 40)),
          Text(
            "What are \nyou looking for",
            style: Styles.headLineStyle2.copyWith(
              fontSize: AppLayout.getWidth(context, 35),
            ),
          ),
          Gap(AppLayout.getHeight(context, 20)),
          const AppTicketTabs(
            firstTab: "Airline Tickets",
            secondTab: "Hotels",
          ),
          Gap(AppLayout.getHeight(context, 25)),
          const AppIconText(
              icon: Icons.flight_takeoff_rounded, text: "Departure"),
          Gap(AppLayout.getHeight(context, 20)),
          const AppIconText(icon: Icons.flight_land_rounded, text: "Arrival"),
          Gap(AppLayout.getHeight(context, 25)),
          Container(
            padding: EdgeInsets.symmetric(
              vertical: AppLayout.getHeight(context, 18),
              horizontal: (AppLayout.getWidth(context, 15)),
            ),
            decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.circular(AppLayout.getWidth(context, 10)),
                color: Color(0xD91130C3)),
            child: Center(
                child: Text("Find Tickets",
                    style: Styles.textStyle.copyWith(color: Colors.white))),
          ),
          Gap(AppLayout.getHeight(context, 40)),
          AppDoubleTextWidget(
              bigText: "Upcoming Flights", smallText: "View all"),
          Gap(AppLayout.getHeight(context, 15)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  height: AppLayout.getHeight(context, 425),
                  width: size.width * .42,
                  padding: EdgeInsets.symmetric(
                      vertical: AppLayout.getWidth(context, 15),
                      horizontal: AppLayout.getHeight(context, 15)),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(
                          AppLayout.getHeight(context, 12)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade200,
                          blurRadius: 1,
                          spreadRadius: 1,
                        )
                      ]),
                  child: Column(
                    children: [
                      Container(
                        height: AppLayout.getHeight(context, 190),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                                AppLayout.getHeight(context, 12)),
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage("assets/images/sit.jpg"))),
                      ),
                      Gap(AppLayout.getHeight(context, 12)),
                      Text(
                          "20% discount ont the early booking of the flight. Don't miss.",
                          style: Styles.headLineStyle2),
                    ],
                  )),
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        width: size.width * 0.44,
                        height: AppLayout.getHeight(context, 200),
                        decoration: BoxDecoration(
                            color: Color(0xFF3AB8B8),
                            borderRadius: BorderRadius.circular(
                                AppLayout.getHeight(context, 18))),
                        padding: EdgeInsets.symmetric(
                            vertical: AppLayout.getHeight(context, 15),
                            horizontal: AppLayout.getWidth(context, 15)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Discount\nfor survey",
                                style: Styles.headLineStyle2.copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold)),
                            Gap(AppLayout.getHeight(context, 10)),
                            Text(
                                "Take the\nsurvey about\nour services \nand get \ndiscounts",
                                style: Styles.headLineStyle2.copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18)),
                          ],
                        ),
                      ),
                      Positioned(
                        right: -45,
                        top: -40,
                        child: Container(
                          padding:
                              EdgeInsets.all(AppLayout.getHeight(context, 30)),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border:
                                Border.all(width: 18, color: Color(0xFF189999)),
                            color: Colors.transparent,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Gap(AppLayout.getHeight(context, 15)),
                  Container(
                    width: size.width * 0.44,
                    height: AppLayout.getHeight(context, 210),
                    padding: EdgeInsets.symmetric(
                        vertical: AppLayout.getHeight(context, 15),
                        horizontal: AppLayout.getWidth(context, 15)),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                            AppLayout.getHeight(context, 18)),
                        color: const Color(0xFFEC6545)),
                    child: Column(
                      children: [
                        Text(
                          "Take Love",
                          style: Styles.headLineStyle2.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Gap(AppLayout.getHeight(context, 8)),
                        RichText(
                            text: const TextSpan(children: [
                          TextSpan(text: "😍", style: TextStyle(fontSize: 38)),
                          TextSpan(text: "🥰", style: TextStyle(fontSize: 50)),
                          TextSpan(text: "😘", style: TextStyle(fontSize: 38))
                        ]))
                      ],
                    ),
                  )
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
