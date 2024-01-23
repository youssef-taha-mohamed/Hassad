import 'package:flutter/material.dart';
import 'package:hased/moduls/i_key.dart';
import 'package:hased/screen/home_component/screen/seling_crop_screen2.dart';
import 'package:hased/screen/home_component/widget/bar.dart';
import 'package:hased/screen/home_component/widget/custom_card.dart';
import 'package:hased/screen/home_component/screen/selling_crop_screen.dart';
import 'package:hased/screen/home_component/widget/weather.dart';
import 'package:hased/widget/custom_text_with_column.dart';

class HomeFarmer extends StatefulWidget {
  const HomeFarmer({super.key});

  @override
  State<HomeFarmer> createState() => _HomeFarmerState();
}

class _HomeFarmerState extends State<HomeFarmer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //drawer:const HomePageDrawer(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin:const EdgeInsets.only(top: 60,left: 5,right: 15),
              child: const AppBarHome(
                iconData: Icons.list_outlined,
              ),
            ),
            CustomTextWithColumn(
              textOne: TKeys.hi.translate(context),
              textTwo: TKeys.weather.translate(context),
              fontSize: 18,
              axis: CrossAxisAlignment.start,
              align: TextAlign.start,
            ),
            const WeatherWidget(),
            CustomCard(
              titleOne: TKeys.crop.translate(context),
              titleTwo: TKeys.selectCrop.translate(context),
              buttonText: TKeys.clickHere.translate(context),
              function: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=>const SellingCrop()));
              },
              widget: Image.asset(
                'assets/images/maize.png',
                color: Colors.white,
                scale: 7,
              ),
            ),
            CustomCard(
              titleOne: TKeys.prepare.translate(context),
              titleTwo: TKeys.selectType.translate(context),
              buttonText: TKeys.clickHere.translate(context),
              function: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=>const SellingCrop2()));
              },
              widget:const Icon(Icons.photo_library_outlined,color: Colors.white,size: 70,)
            ),
            const SizedBox(height: 80,),
          ],
        ),
      ),
    );
  }
}
