import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:app_paletitas/core/constants/colors.dart'; 
import 'package:app_paletitas/UI/core/widgets/main_button.dart'; 
import 'package:app_paletitas/UI/core/widgets/text_fields.dart'; 
import 'package:app_paletitas/UI/core/routes/app_router.dart';

@RoutePage()
class RegisterScreen extends StatelessWidget {
  static const routeName = '/register';
  const RegisterScreen({super.key});

  // Método para registrar y llevar al Home
  void _register(BuildContext context) {
    AutoRouter.of(context).replace(const HomeRoute());
  }

  // Método para volver al Login
  void _goToLogin(BuildContext context) {
    AutoRouter.of(context).replace(const LoginRoute());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(padding: const EdgeInsets.only(top: 80.0, bottom: 40.0),
              child:
             // Título de registro
              const Text(
                "Registrarse",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: AppColors.textPrimary,
                ),
              ),
             ),
              
              const SizedBox(height: 80.0),

              // Nombre de usuario
              const TextFields(
                pistaText: 'Nombre de Usuario',
                prefixIcon: Icons.person,
              ),
              const SizedBox(height: 25.0),

              // Contraseña
              const TextFields(
                pistaText: 'Contraseña',
                textoOculto: true,
                prefixIcon: Icons.lock,
              ),
              const SizedBox(height: 25.0),

              // Confirmar contraseña
              const TextFields(
                pistaText: 'Confirmar Contraseña',
                textoOculto: true,
                prefixIcon: Icons.lock_outline,
              ),
              const SizedBox(height: 40.0),

              // Botón Registrarse
              MainButton(
                label: 'Registrarse',
                accionAlPresionar: () => _register(context),
              ),
              const SizedBox(height: 30.0),

              // Enlace para volver a login
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    '¿Ya tienes una cuenta? ',
                    style: TextStyle(color: AppColors.textPrimary),
                  ),
                  GestureDetector(
                    onTap: () => _goToLogin(context),
                    child: const Text(
                      'Inicia Sesión',
                      style: TextStyle(
                        color: AppColors.primary,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}