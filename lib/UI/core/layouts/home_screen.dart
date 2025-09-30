
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';


@RoutePage()
class HomeScreen extends StatelessWidget {
  static const String routeName = 'home';

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Text('Hola al inicio'
      ),
    ));
  }}