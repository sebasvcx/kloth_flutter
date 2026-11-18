import 'package:flutter/material.dart';

class KlothLogoHeader extends StatelessWidget {
  const KlothLogoHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          'assets/images/logo_negro.png',
          height: 90.0,
        ),
        SizedBox(height: 8.0),
        Text(
          'Tu comunidad de moda',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color(0xFF454743),
            fontSize: 16.0,
          ),
        ),
      ],
    );
  }
}
