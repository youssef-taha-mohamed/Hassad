import 'package:flutter/material.dart';
import '../const/color.dart';
import '../moduls/i_key.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widget/custom_button.dart';
import '../widget/custom_text_form.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  TextEditingController name = TextEditingController();
  TextEditingController phoneNumber = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Container(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                ),
                child: Image.asset('assets/images/cover.jpg'),
              ),
              const SizedBox(height: 40,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                child: Text(
                  TKeys.text.translate(context),
                  style: GoogleFonts.tajawal(
                    color: Theme.of(context).colorScheme.scrim,
                    fontWeight: FontWeight.bold,
                    fontSize: 19,
                  ),
                ),
              ),
              const SizedBox(height: 30,),
              CustomTextForm(
                fieldName: TKeys.name.translate(context),
                hintText: TKeys.nameHint.translate(context),
                myController: name,
                valid: (value) {
                  if (value!.isEmpty) {
                    return 'Enter Your Name';
                  }
                  return null;
                },
                maxLines: 1,
                colorBord: mainColor,
                iconOption: const Text(''),
                icon: Icon(
                  Icons.person_outline_sharp,
                  color: mainColor,
                ),
              ),
              CustomTextForm(
                iconOption: const Text(''),
                fieldName: TKeys.phoneNumber.translate(context),
                hintText: TKeys.phoneNumberHint.translate(context),
                myController: phoneNumber,
                valid: (value) {
                  if (value!.isEmpty) {
                    return 'Enter Your phoneNumber';
                  }
                  return null;
                },
                maxLines: 1,
                colorBord: mainColor,
                icon: Icon(
                  Icons.phone_rounded,
                  color: mainColor,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              CustomButton(
                function: () {
                  Navigator.of(context).pushNamedAndRemoveUntil('/navBar', (route) => false);
                },
                title: TKeys.login.translate(context),
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
            ],
          ),
        ),
      ),
    );
  }
}
