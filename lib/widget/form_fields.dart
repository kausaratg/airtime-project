import 'package:airtimeproject/utils/exports.dart';

class sharedFormFields {
  static Widget buildFormField({
    required TextEditingController controller,
    required String label,
    String? Function(String?)? validator,
    void Function(String?)? onChanged,
    TextInputType? keyboardType,
    bool obscureText = false,
    IconButton? suffixIcon,
    Color? fillColor,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextFormField(
        controller: controller,
        keyboardType: keyboardType,
        obscureText: obscureText,
        decoration: InputDecoration(
          filled: true,
          fillColor: aGrey,
          labelText: label,
          suffixIcon: suffixIcon,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: aBlue),
          ),
        ),
        validator: validator,
        onChanged: onChanged,
        autovalidateMode: AutovalidateMode.onUserInteraction,
      ),
    );
  }
}
