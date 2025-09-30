
import 'package:flutter/material.dart';
import 'package:app_paletitas/UI/core/routes/app_router.dart'; 

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  final AppRouter _appRouter = AppRouter();

  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _appRouter.config(), 
      title: 'App Paletitas',
      theme: ThemeData(
        useMaterial3: true,
        primarySwatch: Colors.blue, 
      ),
    );
  }
}