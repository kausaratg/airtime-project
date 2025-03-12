import 'package:airtimeproject/screens/onboarding/forgotpassword_screen.dart';
import 'package:airtimeproject/utils/exports.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isButtonEnable = false;
  String error = "";
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
          emailController.text.isNotEmpty &&
          passwordController.text.length >= 6;
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
              SharedFormFields.buildFormField(
                validator: (value) {},
                controller: emailController,
                label: emailplaceholder,
              ),

              SizedBox(height: 14),
              // Password form
              SharedFormFields.buildFormField(
                controller: passwordController,
                label: passwordplaceholder,
                validator: (value) {
                  // if (value == null || value.length < 6) {
                  //   error = "Incorrect Password Please try again   ";
                  // }
                  // return null;
                },
                obscureText: true,
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ForgotpasswordScreen(),
                        ),
                      );
                    },
                    child: Text(
                      forgottext,
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: apurple,
                      ),
                    ),
                  ),
                  if (error.isNotEmpty)
                    Text(
                      error,
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: oRed,
                      ),
                    ),
                ],
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
                    WidgetSpan(
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => CreateAccountScreen(),
                            ),
                          );
                        },
                        child: Text(
                          signup,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w300,
                            color: apurple,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 70),

              SharedButton.buildButton(
                label: loginButton,
                onPressed: () {},
                isButtonEnabled: isButtonEnable,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
