import 'package:app_paletitas/UI/core/routes/app_router.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

@RoutePage()
class RegisterScreen extends StatelessWidget {
  static const String routeName = '/register';

  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 50.0),
            Text('Welcome'),
            SizedBox(height: 400.0),
            Center(child: 
             ElevatedButton(
              onPressed: () {
                AutoRouter.of(context).push(LoginRoute());
              },
              child: Text("Creat account"),
            ),
            ),
                        //Register Screen
           
          ],
        ),
      ),
    );
  }
}