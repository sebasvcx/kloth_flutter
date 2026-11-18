import 'package:material_ui/material_ui.dart';

import '../widgets/kloth_button.dart';
import '../widgets/kloth_logo_header.dart';
import '../widgets/kloth_text_field.dart';
import 'login_screen.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFCF8F7),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 30),
              KlothLogoHeader(),
              SizedBox(height: 32),
              Text(
                'Crear cuenta',
                style: TextStyle(
                  color: Color(0xFF1C1B1B),
                  fontSize: 35,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 24),
              KlothTextField(
                label: 'Nombre completo',
              ),
              SizedBox(height: 16),
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
              SizedBox(height: 16),
              KlothTextField(
                label: 'Confirmar contraseña',
                obscureText: true,
              ),
              SizedBox(height: 32),
              KlothButton(buttonName: 'REGISTRARSE'),
              SizedBox(height: 24),
              OrDivider(),
              SizedBox(height: 24),
              AuthRedirectText(
                text: '¿Ya tienes cuenta? ',
                linkText: 'Inicia sesión',
              ),
              SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
