import 'package:go_router/go_router.dart';
import 'package:hoardr/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
class ScreenPaths {
  static String splash = '/';
  static String onboarding = '/onboarding';
  static String home = '/home';
  static String favorite = 'favorite';
  static String add = '/add';
  static String message = '/message';
  static String profile = '/profile';
}

final appRouter = GoRouter(
  routes: [
    ShellRoute(
      builder: (context,router,navigator) {
        return 
      },
      routes: [
        AppRoute(ScreenPaths.profile, (s) => ),
        AppRoute(ScreenPaths.message, (s) => ),
        AppRoute(ScreenPaths.add, (s) => ),
        AppRoute(ScreenPaths.favorite, (s) => )
    ])
]);




class AppRoute extends GoRoute {
  AppRoute(String path, Widget Function(GoRouterState s) builder, {List<GoRoute> routes = const [], this.useFade = false}) :
  super (path: path, routes: routes, pageBuilder: (context,state) {
    final pageContent = Scaffold(
      body: builder(state),
      resizeToAvoidBottomInset: false,
    );
    if (useFade) {
      return CustomTransitionPage(child: pageContent, transitionsBuilder:((context, animation, secondaryAnimation, child) {
        return FadeTransition(opacity: animation,child: child);
        }) );
      } 
      return CupertinoPage(child: pageContent);
    }
  );
  final bool useFade;
}

