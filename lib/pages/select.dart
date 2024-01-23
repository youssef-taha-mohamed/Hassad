import 'package:flutter/material.dart';
import '../const/color.dart';
import '../moduls/i_key.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widget/custom_button.dart';

class SelectedItem extends StatefulWidget {
  const SelectedItem({super.key});

  @override
  State<SelectedItem> createState() => _SelectedItemState();
}

class _SelectedItemState extends State<SelectedItem> {
  TextEditingController name = TextEditingController();
  TextEditingController phoneNumber = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),
            child: Image.asset(
              'assets/images/selected.jpg',
              scale: 0.6,
              fit: BoxFit.fitHeight,
              height: 250,
            ),
          ),
          const SizedBox(
            height: 60,
          ),
          Text(
            TKeys.choose.translate(context),
            textAlign: TextAlign.center,
            style: GoogleFonts.tajawal(
              color: Theme.of(context).colorScheme.scrim,
              letterSpacing: 0.8,
              fontWeight: FontWeight.w900,
              fontSize: 25,
            ),
          ),
          SizedBox(height: 70,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: CustomButton(
              function: () {
                Navigator.of(context)
                    .pushNamedAndRemoveUntil('/register', (route) => false);
              },
              title: TKeys.farmer.translate(context),
              width: MediaQuery.of(context).size.width,
              height: 45,
              padding: 18.0,
              icon: null,
              fontSize: 23,
              fontWeight: FontWeight.w900,
              mainAxisAlignment: MainAxisAlignment.center,
              backGround: mainColor,
              textColor: Colors.white,
            ),
          ),
          const SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: CustomButton(
              function: () {
                Navigator.of(context)
                    .pushNamedAndRemoveUntil('/loginComp', (route) => false);
              },
              title: TKeys.companies.translate(context),
              width: MediaQuery.of(context).size.width,
              height: 45,
              padding: 18.0,
              icon: null,
              fontSize: 23,
              fontWeight: FontWeight.w900,
              mainAxisAlignment: MainAxisAlignment.center,
              backGround: mainColor,
              textColor: Colors.white,
            ),
          ),
          SizedBox(height: 70,),
          Text(
            TKeys.note.translate(context),
            textAlign: TextAlign.center,
            style: GoogleFonts.tajawal(
              color: Theme.of(context).colorScheme.scrim,
              letterSpacing: 1.5,
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          ),

        ],
      ),
    );
  }
}
