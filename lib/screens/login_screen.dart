import 'package:material_ui/material_ui.dart';

import '../widgets/kloth_button.dart';
import '../widgets/kloth_logo_header.dart';
import '../widgets/kloth_text_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFCF8F7),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Spacer(),
              KlothLogoHeader(),
              SizedBox(height: 40),
              KlothTextField(
                label: 'Correo electrónico',
                hint: 'correo@gmail.com',
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(height: 16),
              KlothTextField(
                label: 'Contraseña',
                obscureText: true,
              ),
              SizedBox(height: 8),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    '¿Olvidaste tu contraseña?',
                    style: TextStyle(color: Color(0xFF020202)),
                  ),
                ),
              ),
              SizedBox(height: 24),
              KlothButton(buttonName: 'INGRESAR'),
              SizedBox(height: 24),
              OrDivider(),
              SizedBox(height: 24),
              AuthRedirectText(
                text: '¿No tienes cuenta? ',
                linkText: 'Regístrate',
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}

class OrDivider extends StatelessWidget {
  const OrDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Divider(color: Color(0xFFC6C7C1))),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 12),
          child: Text(
            'o',
            style: TextStyle(color: Color(0xFF454743)),
          ),
        ),
        Expanded(child: Divider(color: Color(0xFFC6C7C1))),
      ],
    );
  }
}

class AuthRedirectText extends StatelessWidget {
  const AuthRedirectText({
    super.key,
    required this.text,
    required this.linkText,
  });

  final String text;
  final String linkText;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text,
          style: TextStyle(color: Color(0xFF454743)),
        ),
        GestureDetector(
          onTap: () {},
          child: Text(
            linkText,
            style: TextStyle(
              color: Color(0xFF020202),
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }
}
