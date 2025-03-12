import 'package:airtimeproject/constants/airtimecolor.dart';
import 'package:airtimeproject/constants/airtimetexts.dart';
import 'package:airtimeproject/utils/exports.dart';
import 'package:flutter/material.dart';

class ForgotpasswordScreen extends StatefulWidget {
  const ForgotpasswordScreen({super.key});

  @override
  State<ForgotpasswordScreen> createState() => _ForgotpasswordScreenState();
}

class _ForgotpasswordScreenState extends State<ForgotpasswordScreen> {
  bool isButtonEnable = false;

  TextEditingController emailController = TextEditingController();

  @override
  void initState() {
    super.initState();
    emailController.addListener(updateButtonState);
  }

  void updateButtonState() {
    setState(() {
      isButtonEnable = emailController.text.isNotEmpty;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 89,
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 13),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: primarygrey,
              ),
              child: Row(
                children: [
                  Icon(Icons.arrow_back_ios),
                  SizedBox(width: 10),
                  Text(
                    "Back",
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            SizedBox(height: 60),
            Text(
              forgottext,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 130),
            Text(
              emailplaceholder,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: aBlue,
              ),
            ),
            Text(
              resetPasswordMessage,
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
            ),
            SizedBox(height: 20),
            SharedFormFields.buildFormField(
              controller: emailController,
              label: emailtext,
            ),
            SizedBox(height: 40),
            SharedButton.buildButton(onPressed: () {}, label: resetpassword, isButtonEnabled: isButtonEnable),
          ],
        ),
      ),
    );
  }
}
