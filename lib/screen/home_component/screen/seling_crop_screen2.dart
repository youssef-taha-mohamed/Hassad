import 'package:flutter/material.dart';
import 'package:hased/company/pages/conguratulation.dart';
import 'package:hased/const/color.dart';
import 'package:hased/moduls/i_key.dart';
import 'package:hased/screen/home_component/screen/notification_screen.dart';
import 'package:hased/screen/home_component/widget/bar.dart';
import 'package:hased/screen/home_component/widget/custom_image.dart';
import 'package:hased/screen/home_component/widget/data.dart';
import 'package:hased/widget/custom_button.dart';
import 'package:hased/widget/custom_text.dart';

class SellingCrop2 extends StatefulWidget {
  const SellingCrop2({super.key});

  @override
  State<SellingCrop2> createState() => _SellingCrop2State();
}

class _SellingCrop2State extends State<SellingCrop2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          margin: const EdgeInsets.only(left: 10, right: 10, top: 20),
          child: ListView(
            children: [
              const AppBarHome(
                iconData: Icons.arrow_back_ios_new,
              ),
              CustomText(
                title: TKeys.selectType2.translate(context),
                fontSize: 20,
                color: Colors.black,
                margin:const EdgeInsets.only(top: 5),
                textAlign: TextAlign.start,
              ),
              CustomText(
                title: TKeys.photo.translate(context),
                fontSize: 23,
                margin:const EdgeInsets.only(bottom: 10,top: 15),
              ),
              Row(
                children: [
                  CustomButton(
                    function: () {},
                    title: TKeys.openCam.translate(context),
                    width: MediaQuery.of(context).size.width * 0.44,
                    height: 35,
                    padding: 0.0,
                    icon: Icons.camera_alt_outlined,
                    fontSize: 19,
                    fontWeight: FontWeight.w400,
                    mainAxisAlignment: MainAxisAlignment.center,
                    backGround: mainColor,
                    textColor: Colors.white,
                    iconColor: Colors.white,
                  ),
                  CustomButton(
                    function: () {},
                    title: TKeys.openPho.translate(context),
                    width: MediaQuery.of(context).size.width * 0.44,
                    height: 35,
                    padding: 15.0,
                    icon: Icons.photo_camera_back_outlined,
                    fontSize: 19,
                    fontWeight: FontWeight.w400,
                    mainAxisAlignment: MainAxisAlignment.center,
                    backGround: mainColor,
                    textColor: Colors.white,
                    iconColor: Colors.white,
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              const CustomImage(
                imageOne: 'assets/images/3.jpg',
                imageTwo: 'assets/images/2.jpg',
                imageThree: 'assets/images/1.jpg',
              ),
              SizedBox(
                height: 15,
              ),
              Data(
                title: TKeys.array.translate(context),
                hintTitle: TKeys.acre.translate(context),
                description: TKeys.addInformation.translate(context),
              ),
              CustomButton(
                function: () {
                  Navigator.of(context).pushNamedAndRemoveUntil(
                      '/congratulation', (Route<dynamic> route) => false);
                },
                title: TKeys.send.translate(context),
                width: MediaQuery.of(context).size.width,
                height: 45,
                padding: 18,
                icon: null,
                fontSize: 22,
                fontWeight: FontWeight.w900,
                mainAxisAlignment: MainAxisAlignment.center,
                backGround: mainColor,
                textColor: Colors.white,
              ),
              CustomText(
                title: TKeys.afterSend2.translate(context),
                fontSize: 20,
                textAlign: TextAlign.center,
                margin: const EdgeInsets.only(top: 40,left: 10,right: 10,bottom: 50),
              ),
            ],
          ),
        ));
  }
}
