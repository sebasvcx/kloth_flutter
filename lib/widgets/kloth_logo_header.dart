import 'package:material_ui/material_ui.dart';

class KlothLogoHeader extends StatelessWidget {
  const KlothLogoHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          'assets/images/logo_negro.png',
          height: 90,
          fit: BoxFit.contain,
        ),
        SizedBox(height: 8),
        Text(
          'Tu comunidad de moda',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color(0xFF454743),
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}
