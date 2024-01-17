import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hased/moduls/i_key.dart';
import 'package:hased/widget/custom_text_form.dart';

class Data extends StatefulWidget {
  const Data({super.key});

  @override
  State<Data> createState() => _DataState();
}

class _DataState extends State<Data> {
  TextEditingController type = TextEditingController();
  TextEditingController location = TextEditingController();
  TextEditingController many = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController phone2 = TextEditingController();
  TextEditingController another = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          CustomTextForm(
            iconOption: const Text(''),
            fieldName: TKeys.selectYourCrop.translate(context),
            hintText: TKeys.sunflower.translate(context),
            myController: type,
            valid: (value) {
              if (value!.isEmpty) {
                return 'Please Enter The Name of Crop';
              }
              return null;
            },
            maxLines: 1,
            iconPrefix: Image.asset(
              'assets/images/prefix.png',
              // width: 10,
              // height: 10,
            ),
            icon: const Icon(
              Icons.arrow_forward_ios_sharp,
              weight: 25,
            ),
            colorBord: Colors.white,
          ),
          CustomTextForm(
            fieldName: TKeys.location.translate(context),
            hintText: TKeys.minya.translate(context),
            myController: location,
            valid: (value) {
              if (value!.isEmpty) {
                return 'Please Selected Your Location';
              }
              return null;
            },
            maxLines: 1,
            icon: const Icon(
              Icons.arrow_forward_ios_sharp,
              weight: 25,
            ),
            colorBord: Colors.white,
            iconOption: Text(
              TKeys.update.translate(context),
              style: GoogleFonts.tajawal(
                decorationThickness: 3,
                decoration: TextDecoration.underline,
              ),
            ),
          ),
          CustomTextForm(
            iconOption: const Text(''),
            fieldName: TKeys.quantity.translate(context),
            hintText: '10 طن',
            myController: type,
            valid: (value) {
              if (value!.isEmpty) {
                return 'Please Enter The Harvest Quantity';
              }
              return null;
            },
            maxLines: 1,
            icon: null,
            colorBord: Colors.white,
          ),
          CustomTextForm(
            iconOption: Text(
              TKeys.update.translate(context),
              style: GoogleFonts.tajawal(
                decorationThickness: 3,
                decoration: TextDecoration.underline,
              ),
            ),
            fieldName: TKeys.contactNumber.translate(context),
            hintText: TKeys.phoneNumberHint.translate(context),
            myController: location,
            valid: (value) {
              if (value!.isEmpty) {
                return 'Please Enter Your Contact Number';
              }
              return null;
            },
            maxLines: 1,
            icon: null,
            colorBord: Colors.white,
          ),
          CustomTextForm(
            iconOption: Text(
              TKeys.update.translate(context),
              style: GoogleFonts.tajawal(
                decorationThickness: 3,
                decoration: TextDecoration.underline,
              ),
            ),
            fieldName: TKeys.anotherContactNumber.translate(context),
            hintText: '01116483156',
            myController: type,
            valid: (value) {
              if (value!.isEmpty) {
                return 'Please Enter Your Another Contact Number';
              }
              return null;
            },
            maxLines: 1,
            icon: null,
            colorBord: Colors.white,
          ),
          CustomTextForm(
            iconOption: Text(''),
            fieldName: TKeys.addDescription.translate(context),
            hintText: TKeys.write.translate(context),
            myController: location,
            valid: (value) {
              if (value!.isEmpty) {
                return 'Please Add A Description Of Your Crop ';
              }
              return null;
            },
            maxLines: 5,
            icon: null,
            colorBord: Colors.white,
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
