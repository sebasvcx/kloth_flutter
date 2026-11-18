import 'package:flutter/material.dart';

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
          padding: EdgeInsets.all(30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 30.0),
              KlothLogoHeader(),
              SizedBox(height: 32.0),
              Text(
                'Crear cuenta',
                style: TextStyle(
                  color: Color(0xFF1C1B1B),
                  fontSize: 35.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 24.0),
              KlothTextField(
                labelText: 'Nombre completo',
              ),
              SizedBox(height: 16.0),
              KlothTextField(
                labelText: 'Correo electrónico',
                hintText: 'correo@gmail.com',
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(height: 16.0),
              KlothTextField(
                labelText: 'Contraseña',
                obscureText: true,
              ),
              SizedBox(height: 16.0),
              KlothTextField(
                labelText: 'Confirmar contraseña',
                obscureText: true,
              ),
              SizedBox(height: 32.0),
              KlothButton(
                buttonName: 'REGISTRARSE',
                buttonColor: Color(0xFF020202),
              ),
              SizedBox(height: 24.0),
              OrDivider(),
              SizedBox(height: 24.0),
              AuthRedirectText(
                text: '¿Ya tienes cuenta? ',
                linkText: 'Inicia sesión',
              ),
              SizedBox(height: 30.0),
            ],
          ),
        ),
      ),
    );
  }
}
