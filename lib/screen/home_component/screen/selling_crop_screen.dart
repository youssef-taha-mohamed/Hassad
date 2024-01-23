import 'package:flutter/material.dart';
import 'package:hased/company/pages/conguratulation.dart';
import 'package:hased/moduls/i_key.dart';
import 'package:hased/screen/home_component/widget/bar.dart';
import 'package:hased/screen/home_component/widget/custom_image.dart';
import 'package:hased/screen/home_component/widget/data.dart';
import 'package:hased/widget/custom_button.dart';
import 'package:hased/widget/custom_text.dart';

import '../../../const/color.dart';

class SellingCrop extends StatefulWidget {
  const SellingCrop({super.key});

  @override
  State<SellingCrop> createState() => _SellingCropState();
}

class _SellingCropState extends State<SellingCrop> {
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
            title: TKeys.full.translate(context),
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
            imageOne: 'assets/images/worshipers1.jpg',
            imageTwo: 'assets/images/worshipers2.jpg',
            imageThree: 'assets/images/worshipers3.jpg',
          ),
          SizedBox(
            height: 15,
          ),
          Data(
            title: TKeys.quantity.translate(context),
            hintTitle: TKeys.tons.translate(context),
            description: TKeys.addDescription.translate(context),
          ),
          CustomButton(
            function: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=> const Congratulation()));
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
            title: TKeys.afterSend.translate(context),
            fontSize: 20,
            textAlign: TextAlign.center,
            margin: const EdgeInsets.only(top: 40,left: 10,right: 10,bottom: 50),
          ),
        ],
      ),
    ));
  }
}
