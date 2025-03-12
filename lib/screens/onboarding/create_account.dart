import 'package:airtimeproject/utils/exports.dart';

class CreateAccountScreen extends StatefulWidget {
  const CreateAccountScreen({super.key});

  @override
  State<CreateAccountScreen> createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<CreateAccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Logo
            Image.asset(
              'assets/images/airtimeB.png',
              height: 40,
            ),
            const SizedBox(height: 20),

            // Illustration Image
            Image.asset(
              'assets/images/nightcall.jpg',
              height: 200,
            ),
            const SizedBox(height: 30),

            // Title
            const Text(
              "Airtime solution for all",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 8),

            // Subtitle
            const Text(
              "Be sure to provide the Correct Details",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 40),

            // Create an Account Button
            SharedButton.buildButton(label: "Create an Account", onPressed: (){}, isButtonEnabled: true ),
            // CustomButton(
            //   text: ,
            //   onPressed: () {
            //     // Navigate to sign-up screen
            //   },
            //   backgroundColor: const Color(0xFF12303F), // Dark blue
            //   textColor: Colors.white,
            // ),
            const SizedBox(height: 16),

            // Login Button
            // CustomButton(
            //   text: 
            //   onPressed: () {
            //     // Navigate to login screen
            //   },
            
            //   textColor: Colors.white,
            // ),
            SharedButton.buildButton(onPressed: (){}, label:"Login",  backgroundColor: const Color(0xFFD0A463), isButtonEnabled: true),
            const SizedBox(height: 20),

            // Terms and Privacy Policy
            const Text.rich(
              TextSpan(
                text:
                    'By clicking on “Create an account”, you agree to all our ',
                style: TextStyle(fontSize: 14, color: Colors.grey),
                children: [
                  TextSpan(
                    text: 'Terms',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.blue),
                  ),
                  TextSpan(text: ' and '),
                  TextSpan(
                    text: 'Privacy Policy',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.purple),
                  ),
                ],
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
