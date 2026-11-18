import 'package:material_ui/material_ui.dart';

class KlothTextField extends StatelessWidget {
  const KlothTextField({
    super.key,
    required this.labelText,
    this.hintText,
    this.obscureText = false,
    this.keyboardType,
  });

  final String labelText;
  final String? hintText;
  final bool obscureText;
  final TextInputType? keyboardType;

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText,
      keyboardType: keyboardType,
      decoration: buildInputDecoration(
        labelText: labelText,
        hintText: hintText,
      ),
    );
  }
}

InputDecoration buildInputDecoration({
  required String labelText,
  String? hintText,
}) {
  return InputDecoration(
    labelText: labelText,
    hintText: hintText,
    labelStyle: TextStyle(
      color: Color(0xFF454743),
      fontSize: 14.0,
    ),
    filled: true,
    fillColor: Color(0xFFF7F3F2),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12.0),
      borderSide: BorderSide.none,
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12.0),
      borderSide: BorderSide(color: Color(0xFF020202), width: 1.5),
    ),
  );
}
