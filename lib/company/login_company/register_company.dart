import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hased/const/color.dart';
import '../../moduls/i_key.dart';
import '../../widget/custom_button.dart';
import '../../widget/custom_text_form.dart';

class RegisterCompany extends StatefulWidget {
  const RegisterCompany({super.key});

  @override
  State<RegisterCompany> createState() => _RegisterCompanyState();
}

class _RegisterCompanyState extends State<RegisterCompany> {
  TextEditingController name = TextEditingController();
  TextEditingController phoneNumber = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                ),
                child: Image.asset('assets/images/verified.jpg'),
              ),
              const SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  TKeys.textCompany.translate(context),
                  textAlign: TextAlign.start,
                  style: GoogleFonts.tajawal(
                    color: Theme.of(context).colorScheme.scrim,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.5,
                    fontSize: 23,
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              CustomTextForm(
                  iconOption: const Text(''),
                  fieldName: TKeys.field1.translate(context),
                  hintText: TKeys.helper.translate(context),
                  myController: name,
                  valid: (value) {
                    if (value!.isEmpty) {
                      return 'Enter Your Number';
                    }
                    return null;
                  },
                  maxLines: 1,
                  colorBord: mainColor,
                  icon: null),
              CustomTextForm(
                iconOption: const Text(''),
                fieldName: TKeys.field2.translate(context),
                hintText: TKeys.helper.translate(context),
                myController: phoneNumber,
                valid: (value) {
                  if (value!.isEmpty) {
                    return 'Enter Your Number';
                  }
                  return null;
                },
                colorBord: mainColor,
                maxLines: 1,
                icon: null,
              ),
              CustomTextForm(
                iconOption: const Text(''),
                fieldName: TKeys.phoneNumber.translate(context),
                hintText: TKeys.phoneNumberHint.translate(context),
                myController: phoneNumber,
                valid: (value) {
                  if (value!.isEmpty) {
                    return 'Enter Your PhoneNumber';
                  }
                  return null;
                },
                maxLines: 1,
                colorBord: mainColor,
                icon: Icon(Icons.phone_rounded, color: mainColor),
              ),
              const SizedBox(
                height: 20,
              ),
              CustomButton(
                function: () {
                  Navigator.of(context)
                      .pushNamedAndRemoveUntil('/verified', (route) => false);
                },
                title: TKeys.login.translate(context),
                width: MediaQuery.of(context).size.width,
                height: 45,
                padding: 18.0,
                icon: null,
                fontSize: 23,
                mainAxisAlignment: MainAxisAlignment.center,
                backGround: mainColor,
                textColor: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
