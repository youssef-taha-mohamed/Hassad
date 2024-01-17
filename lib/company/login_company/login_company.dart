import 'package:flutter/material.dart';
import 'package:hased/const/color.dart';
import 'package:hased/moduls/i_key.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../widget/custom_button.dart';
import '../../widget/custom_text_form.dart';


class LoginCompany extends StatefulWidget {
  const LoginCompany({super.key});

  @override
  State<LoginCompany> createState() => _LoginCompanyState();
}

class _LoginCompanyState extends State<LoginCompany> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController configPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          //crossAxisAlignment: CrossAxisAlignment.center,
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 80.0,bottom: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin:const EdgeInsets.only(right: 13,left: 12),
                    child: Column(
                      children: [
                        Text(
                          TKeys.welcome.translate(context),
                          textAlign: TextAlign.start,
                          style: GoogleFonts.tajawal(
                            color: Theme.of(context).colorScheme.scrim,
                            fontWeight: FontWeight.bold,
                            fontSize: 23,
                          ),
                        ),
                        Text(
                          TKeys.registerNow.translate(context),
                          textAlign: TextAlign.start,
                          style: GoogleFonts.tajawal(
                            color: Theme.of(context).colorScheme.scrim,
                            fontSize: 17,
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
            const SizedBox(height: 70,),
            const Spacer(),
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
              colorBord: mainColor,
              iconOption: const Text(''),
              maxLines: 1,
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
              colorBord: mainColor,
              maxLines: 1,
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
                Navigator.pushReplacementNamed(context, '/signInComp');
              },
              title: TKeys.next.translate(context),
              width: MediaQuery.of(context).size.width,
              height: 45,
              padding: 18.0,
              icon: null,
              fontSize: 23,
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
                    Navigator.pushReplacementNamed(context, '/signInComp');
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
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
