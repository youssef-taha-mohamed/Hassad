import 'package:flutter/material.dart';
import 'package:hased/const/color.dart';
import 'package:hased/moduls/i_key.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../widget/custom_button.dart';
import '../../widget/custom_text_form.dart';


class SignInCompany extends StatefulWidget {
  const SignInCompany({super.key});

  @override
  State<SignInCompany> createState() => _SignInCompanyState();
}

class _SignInCompanyState extends State<SignInCompany> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        // crossAxisAlignment: CrossAxisAlignment.center,
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 80.0,bottom: 80),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin:const EdgeInsets.only(right: 13,left: 12),
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
          Spacer(),
          CustomTextForm(
            iconOption: const Text(''),
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
            height: 20,
          ),
          CustomButton(
            function: () {
              Navigator.pushReplacementNamed(context, '/registerCompany');
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
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: [
          //     Text(
          //       TKeys.no.translate(context),
          //       style: GoogleFonts.tajawal(
          //           fontSize: 16,
          //           color: Colors.black87
          //       ),
          //     ),
          //     TextButton(
          //       onPressed: () {
          //         Navigator.pushReplacementNamed(context, '/register');
          //       },
          //       child: Text(
          //         TKeys.createAccount.translate(context),
          //         style: GoogleFonts.tajawal(
          //           fontSize: 16,
          //           fontWeight: FontWeight.bold,
          //           color: const Color.fromRGBO(138, 169, 89, 1),
          //           decoration: TextDecoration.underline,
          //           decorationColor: const Color.fromRGBO(138, 169, 89, 1),
          //           decorationThickness: 5,
          //         ),
          //       ),
          //     ),
          //   ],
          // ),
          const Spacer(),
        ],
      ),
    );
  }
}
