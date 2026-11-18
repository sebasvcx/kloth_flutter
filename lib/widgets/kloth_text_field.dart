import 'package:material_ui/material_ui.dart';

class KlothTextField extends StatelessWidget {
  const KlothTextField({
    super.key,
    required this.label,
    this.hint,
    this.obscureText = false,
    this.onChanged,
    this.keyboardType,
  });

  final String label;
  final String? hint;
  final bool obscureText;
  final ValueChanged<String>? onChanged;
  final TextInputType? keyboardType;

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChanged,
      obscureText: obscureText,
      keyboardType: keyboardType,
      decoration: buildInputDecoration(
        label: label,
        hint: hint,
      ),
    );
  }
}

InputDecoration buildInputDecoration({
  required String label,
  String? hint,
}) {
  return InputDecoration(
    labelText: label,
    hintText: hint,
    filled: true,
    fillColor: Color(0xFFF7F3F2),
    labelStyle: TextStyle(
      color: Color(0xFF454743),
      fontSize: 14,
    ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide.none,
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(color: Color(0xFF020202), width: 1.5),
    ),
  );
}
