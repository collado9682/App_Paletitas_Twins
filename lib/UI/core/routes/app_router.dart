
import 'package:app_paletitas/UI/core/layouts/home_screen.dart';
import 'package:auto_route/auto_route.dart';
import 'package:app_paletitas/UI/authentication/screens/login_screen.dart';
import 'package:app_paletitas/UI/authentication/screens/register_screen.dart';
import 'package:app_paletitas/UI/core/layouts/main_layout_screen.dart';


part  'app_router.gr.dart'; 

@AutoRouterConfig(replaceInRouteName: 'Screen|Page,Route')
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
   AutoRoute(page: LoginRoute.page, path: '/login', initial: true),
   AutoRoute(page: RegisterRoute.page, path: '/register'),
   AutoRoute(page:MainLayoutRoute.page,path:'/main-layout', children: [
    AutoRoute(page: HomeRoute.page, path:HomeScreen.routeName )
   ]),
  ];
}