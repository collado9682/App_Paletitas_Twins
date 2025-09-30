
import 'package:flutter/material.dart';
import 'package:app_paletitas/UI/core/routes/app_router.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _appRouter.config(), 
      title: 'Paletitas App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}