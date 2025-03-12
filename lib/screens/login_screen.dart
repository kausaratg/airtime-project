import 'package:airtimeproject/constants/airtimecolor.dart';
import 'package:airtimeproject/constants/airtimeimages.dart';
import 'package:airtimeproject/constants/airtimetexts.dart';
import 'package:airtimeproject/widget/form_fields.dart';
import 'package:airtimeproject/utils/exports.dart';
import 'package:airtimeproject/widget/form_fields.dart' as Class;
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isButtonEnable = false;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
    emailController.addListener(updateButtonState);
    passwordController.addListener(updateButtonState);
  }

  void updateButtonState() {
    setState(() {
      isButtonEnable =
          emailController.text.isNotEmpty && passwordController.text.isNotEmpty;
    });
  }

  bool isobscure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: aWhite,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                welcome,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w300),
              ),
              Text(
                username,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 70),
              Center(child: Image.asset(profileimage)),
              SizedBox(height: 37),

              // Email Textform
              sharedFormFields.buildFormField(
                validator: (value) {},
                controller: emailController,
                label: emailplaceholder,
              ),

              SizedBox(height: 14),
              // Password form
              sharedFormFields.buildFormField(
                controller: passwordController,
                label: passwordplaceholder,
                validator: (value) {
                  if (value == null || value.length < 6) {
                    return "Password must be at least 6 characters";
                  }
                  return null;
                },
                obscureText: true,
              ),
              // SizedBox(
              //   width: double.infinity,
              //   child: TextFormField(
              //     controller: passwordController,
              //     obscureText: isobscure,
              //     obscuringCharacter: "*",
              //     decoration: InputDecoration(
              //       contentPadding: EdgeInsets.symmetric(
              //         vertical: 24.5,
              //         horizontal: 15,
              //       ),

              //       hintText: passwordplaceholder,
              //       hintStyle: TextStyle(
              //         fontSize: 13,
              //         fontWeight: FontWeight.w500,
              //         color: lightgrey,
              //       ),

              //       filled: true,

              //       fillColor: boxColor,

              //       enabledBorder: OutlineInputBorder(
              //         borderSide: BorderSide(color: boxColor, width: 1),
              //         borderRadius: BorderRadius.circular(10),
              //       ),
              //       focusedBorder: OutlineInputBorder(
              //         borderSide: BorderSide.none,
              //         borderRadius: BorderRadius.circular(10),
              //       ),
              //       suffixIcon: GestureDetector(
              //         child: Container(
              //           margin: EdgeInsets.only(right: 15),
              //           width: 65,
              //           height: 34,
              //           decoration: BoxDecoration(
              //             color: aWhite,
              //             borderRadius: BorderRadius.circular(40),
              //           ),
              //           child: Center(
              //             child: Text(
              //               isobscure ? "Show" : "Hide",
              //               style: TextStyle(
              //                 fontSize: 14,
              //                 fontWeight: FontWeight.w500,
              //                 color: Colors.black,
              //               ),
              //             ),
              //           ),
              //         ),

              //         onTap: () {
              //           setState(() {
              //             isobscure = !isobscure;
              //           });
              //         },
              //       ),
              //     ),
              //   ),
              // ),
              SizedBox(height: 10),
              Text(
                forgottext,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: apurple,
                ),
              ),
              SizedBox(height: 70),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: usertext,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    TextSpan(
                      text: signup,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w300,
                        color: apurple,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 70),
              SharedButton.buildButton(label: login, onPressed: () {}),

              // SizedBox(
              //   width: double.infinity,
              //   height: 66,
              //   child: ElevatedButton(
              //     onPressed: () {},
              //     style: ElevatedButton.styleFrom(
              //       backgroundColor: isButtonEnable ? aBlue : aGrey,
              //       shape: RoundedRectangleBorder(
              //         side: BorderSide(width: 1, color: aGrey),
              //         borderRadius: BorderRadius.only(
              //           topRight: Radius.circular(10),
              //           bottomLeft: Radius.circular(10),
              //           bottomRight: Radius.circular(10),
              //         ),
              //       ),
              //     ),
              //     child: Text(
              //       login,
              //       style: TextStyle(
              //         fontSize: 16,
              //         fontWeight: FontWeight.w600,
              //         color: aWhite,
              //       ),
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
