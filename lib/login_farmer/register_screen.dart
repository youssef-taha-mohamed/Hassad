import 'package:flutter/material.dart';
import 'package:hased/moduls/i_key.dart';
import 'package:google_fonts/google_fonts.dart';
import '../const/color.dart';
import '../widget/custom_button.dart';
import '../widget/custom_text_form.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController configPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 80.0,bottom: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: const EdgeInsets.only(right: 12,),
                  child: Column(
                    children: [
                      Text(
                        TKeys.welcome.translate(context),
                        textAlign: TextAlign.start,
                        style: GoogleFonts.tajawal(
                          color: Theme.of(context).colorScheme.scrim,
                          fontWeight: FontWeight.bold,
                          fontSize: 26,
                        ),
                      ),
                      Text(
                        TKeys.registerNow.translate(context),
                        textAlign: TextAlign.start,
                        style: GoogleFonts.tajawal(
                          color: Theme.of(context).colorScheme.scrim,
                          fontSize: 19,
                        ),
                      ),
                    ],
                  ),
                ),
                Image.asset(
                  'assets/images/group.png',
                  width: 120,
                  height: 170,
                ),
              ],
            ),
          ),
          Spacer(),
          CustomTextForm(
            iconOption: const Text(''),
            fieldName: TKeys.email.translate(context),
            hintText: TKeys.emailHint.translate(context),
            myController: email,
            valid: (value) {
              if (value!.isEmpty) {
                return 'Enter Your Name';
              }
              return null;
            },
            maxLines: 1,
            colorBord: mainColor,
            icon: Icon(
              Icons.email_outlined,
              color: mainColor,
            ),
          ),
          CustomTextForm(
            iconOption: const Text(''),
            fieldName: TKeys.password.translate(context),
            hintText: TKeys.passwordHint.translate(context),
            myController: password,
            valid: (value) {
              if (value!.isEmpty) {
                return 'Enter Your Password';
              }
              return null;
            },
            maxLines: 1,
            colorBord: mainColor,
            icon: Icon(
              Icons.visibility_outlined,
              color: mainColor,
            ),
          ),
          CustomTextForm(
            iconOption: const Text(''),
            fieldName: TKeys.configPass.translate(context),
            hintText: TKeys.configPassHint.translate(context),
            myController: configPassword,
            valid: (value) {
              if (value!.isEmpty) {
                return 'Enter Your Password';
              }
              return null;
            },
            maxLines: 1,
            colorBord: mainColor,
            icon: Icon(
              Icons.visibility_outlined,
              color: mainColor,
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          CustomButton(
            function: () {
              Navigator.pushReplacementNamed(context, '/signIn');
            },
            title: TKeys.next.translate(context),
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
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                TKeys.noAccount.translate(context),
                style: GoogleFonts.tajawal(
                  fontSize: 16,
                  color: Colors.black87
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/login');
                },
                child: Text(
                  TKeys.account.translate(context),
                  style: GoogleFonts.tajawal(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: mainColor,
                    decoration: TextDecoration.underline,
                    decorationColor: mainColor,
                    decorationThickness: 35.5,
                  ),
                ),
              ),
            ],
          ),
          Spacer(),
        ],
      ),
    );
  }
}
