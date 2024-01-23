import 'package:flutter/material.dart';
import 'package:hased/const/color.dart';
import 'package:hased/moduls/i_key.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widget/custom_button.dart';
import '../widget/custom_text_form.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
                  margin:const EdgeInsets.only(right: 9),
                  child: Text(
                    TKeys.back.translate(context),
                    softWrap: true,
                    style: GoogleFonts.tajawal(
                      color: Theme.of(context).colorScheme.scrim,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
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
          const Spacer(),
          const SizedBox(height: 20,),
          CustomTextForm(
            fieldName: TKeys.email.translate(context),
            hintText: TKeys.emailHint.translate(context),
            myController: email,
            valid: (value) {
              if (value!.isEmpty) {
                return 'Enter Your Email';
              }
              return null;
            },
            maxLines: 1,
            colorBord: mainColor,
            icon: Icon(
              Icons.email_outlined,
              color: mainColor,
            ),
            iconOption: const Text(''),
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
          const SizedBox(
            height: 40,
          ),
          CustomButton(
            function: () {
              Navigator.pushReplacementNamed(context, '/navBar');
            },
            title: TKeys.next.translate(context),
            height: 45,
            width: MediaQuery.of(context).size.width,
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
                TKeys.no.translate(context),
                style: GoogleFonts.tajawal(
                    fontSize: 16,
                    color: Colors.black87
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/register');
                },
                child: Text(
                  TKeys.createAccount.translate(context),
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
