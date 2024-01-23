import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:hased/const/color.dart';
import 'package:hased/moduls/i_key.dart';
import 'package:hased/notification/local_notification.dart';
import 'package:hased/screen/home_component/widget/bar.dart';
import 'package:hased/screen/home_component/widget/custom_widget_card.dart';
import 'package:hased/screen/home_component/widget/widget_card2.dart';
import 'package:hased/widget/custom_button.dart';
import 'package:hased/widget/custom_text.dart';
import 'package:hased/widget/custom_text_with_column.dart';

FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
    FlutterLocalNotificationsPlugin();

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          AppBarHome(iconData: Icons.arrow_back),
          CustomTextWithColumn(
            textOne: TKeys.to.translate(context),
            textTwo: TKeys.informs.translate(context),
            fontSize: 19,
            fontSizeOne: 24,
            fontWeightOne: FontWeight.w900,
            fontWeightTwo: FontWeight.w500,
            axis: CrossAxisAlignment.start,
            align: TextAlign.start,
            space: 3.5,
          ),
          SizedBox(
            height: 10,
          ),
          CustomButton(
            function: () {
              // LocalNotifications.showSimpleNotification(
              //     title: "Simple Notification",
              //     body: "This is a Simple Notification",
              //     payload: "This is Simple data");
            },
            title: TKeys.view.translate(context),
            width: MediaQuery.of(context).size.width * 0.8,
            height: 45,
            padding: 17.0,
            icon: Icons.arrow_forward_ios,
            fontSize: 22,
            textAlign: TextAlign.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            backGround: Colors.white,
            textColor: Colors.black,
            iconColor: mainColor,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 14.0, left: 14, top: 19),
            child: CustomText(
              title: TKeys.requestResults.translate(context),
              fontSize: 26,
              weight: FontWeight.w900,
            ),
          ),
         const CustomWidgetCard(),
         const WidgetCard(),
        ],
      ),
    );
  }
}
