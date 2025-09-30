import 'package:flutter/material.dart';
import 'package:app_paletitas/core/constants/colors.dart';

class MainButton extends StatelessWidget {
  final String label; 
  final VoidCallback accionAlPresionar; 
  final Color colorFondo;
  final Color colorTexto;

//constructor
  const MainButton({
    super.key, 
    required this.label,
    required this.accionAlPresionar,
    this.colorFondo = AppColors.primary,
    this.colorTexto = AppColors.background,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200.0, 
      height: 50.0,
      child: ElevatedButton(
        onPressed: accionAlPresionar,
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primary,
          shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25.0), 
          ),
          elevation: 0,
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
        ),
        child: Text(
         label,
          style: TextStyle(
            color: AppColors.background,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}