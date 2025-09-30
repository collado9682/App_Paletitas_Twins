import 'package:app_paletitas/core/constants/colors.dart';
import 'package:flutter/material.dart';

class TextFields extends StatelessWidget {
  final String pistaText;
  final bool textoOculto;
  final TextEditingController? controller;
  final IconData? prefixIcon;

//Constructor
  const TextFields({
    super.key, 
    required this.pistaText,
    this.textoOculto = false,
    this.controller, 
    this.prefixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 18.0),
      //Estilo del fondo del campi
      decoration: BoxDecoration(
        color: AppColors.secondary, 
        borderRadius: BorderRadius.circular(25.0), 
      ),
      
      //Contenido interno
      child: TextField(
        obscureText: textoOculto,
        style: const TextStyle(color: AppColors.textPrimary), 

        decoration: InputDecoration(
          border: InputBorder.none, 
          hintText: pistaText,
          hintStyle: 
          TextStyle(color: AppColors.textPrimary),
          
          prefixIcon: prefixIcon != null 
              ? Icon(prefixIcon, color: AppColors.primary)
              : null,
       contentPadding: const EdgeInsets.only(top: 10.0, bottom: 14.0),
        ),
      ),
    );
  }
}
