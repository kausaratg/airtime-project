import 'package:airtimeproject/utils/exports.dart';

class SharedButton {
  static Widget buildButton({
    required VoidCallback onPressed,
    required String label,
    bool isButtonEnabled = false,
    double height = 66,
    double width = double.infinity,
    Color? backgroundColor,
    Color textColor = Colors.white,
  }) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: isButtonEnabled ? onPressed : null,
        style: ElevatedButton.styleFrom(
          backgroundColor: isButtonEnabled ? (backgroundColor ?? aBlue) : aGrey,
          shape: RoundedRectangleBorder(
            side: BorderSide(width: 1, color: aGrey),
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(10),
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10),
            ),
          ),
        ),
        child: Text(
          label,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: textColor,
          ),
        ),
      ),
    );
  }
}
