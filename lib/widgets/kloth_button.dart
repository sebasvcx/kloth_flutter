import 'package:material_ui/material_ui.dart';

class KlothButton extends StatelessWidget {
  const KlothButton({
    super.key,
    required this.buttonName,
    this.onPressed,
  });

  final String buttonName;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 52,
      child: ElevatedButton(
        onPressed: onPressed ?? () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xFF020202),
          foregroundColor: Colors.white,
          elevation: 0,
          shape: StadiumBorder(),
        ),
        child: Text(
          buttonName,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
