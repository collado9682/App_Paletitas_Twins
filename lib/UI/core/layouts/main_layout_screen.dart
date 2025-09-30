import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:app_paletitas/UI/core/routes/app_router.dart';

@RoutePage()
class MainLayoutScreen extends StatelessWidget {
  static String routeName = '/main-layout';

  const MainLayoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Main Layout')),
      body: AutoRouter(),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Text('Menu', style: TextStyle(color: Colors.white, fontSize: 24)),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Inventario'),
              onTap: () {
                Navigator.of(context).pop(); // Close the drawer
                AutoRouter.of(context).push(const HomeRoute());
              },
            ),
            
          ],
        ),
      ),
    );
  }
}