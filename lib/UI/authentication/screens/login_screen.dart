import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart'; 
import 'package:app_paletitas/core/constants/colors.dart'; 
import 'package:app_paletitas/UI/core/widgets/main_button.dart'; 
import 'package:app_paletitas/UI/core/widgets/text_fields.dart'; 
import 'package:app_paletitas/UI/core/routes/app_router.dart'; 

@RoutePage() 
class LoginScreen extends StatelessWidget {
  static const routeName = '/login';
  const LoginScreen({super.key});

  // Método que solo se encarga de navegar a Home
  void _login(BuildContext context) {
    AutoRouter.of(context).replace(const HomeRoute());
  }

  // Método que solo se encarga de navegar a Registro
  void _goToRegister(BuildContext context) {
    AutoRouter.of(context).push(const RegisterRoute());
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
              Padding(
                padding: const EdgeInsets.only(top: 80.0, bottom: 40.0),
                child: CircleAvatar(
                  radius: 50,
                  backgroundColor: AppColors.primary, 
                  child: const Icon(
                    Icons.person,
                    size: 70,
                    color: AppColors.background,
                  ),
                ),
              ),
              
           //campo de usuario
              const TextFields(
                pistaText: 'Usuario',
                prefixIcon: Icons.person,
              ),
              const SizedBox(height: 20.0),

              // Campo de Contraseña
              const TextFields(
                pistaText: 'Contraseña',
                textoOculto: true,
                prefixIcon: Icons.lock,
              ),
              const SizedBox(height: 10.0),

              // Recordarme 
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Checkbox(
                        value: false, 
                        onChanged: (val) {}, 
                        activeColor: AppColors.primary,
                      ),
                      const Text('Recuérdame'),
                    ],
                  ),
                  
                ],
              ),
              const SizedBox(height: 30.0),

              // Botón Iniciar Sesión
              MainButton(
                label: 'Iniciar Sesión', 
                accionAlPresionar: () => _login(context), 
              ),
              const SizedBox(height: 50.0),

              // Enlace de Registro
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('¿No estás registrado? ', style: TextStyle(color: AppColors.textPrimary)),
                  GestureDetector(
                    onTap: () => _goToRegister(context),
                    child: const Text(
                      'Regístrate',
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

