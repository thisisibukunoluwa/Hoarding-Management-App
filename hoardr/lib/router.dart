import 'package:go_router/go_router.dart';
import 'package:hoardr/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:hoardr/screens/additems/add_items_page.dart';
import 'package:hoardr/screens/favorites/favorites_page.dart';
import 'package:hoardr/screens/hoardr_scaffold.dart';
import 'package:hoardr/screens/main/home_page.dart';
import 'package:hoardr/screens/messages/messages_page.dart';
import 'package:hoardr/screens/onboarding/onboarding_page.dart';
import 'package:hoardr/screens/userprofile/profile_page.dart';

class ScreenPaths {
  static String home = '/';
  static String onboarding = '/onboarding';
  static String signIn = '/signIn';
  static String favorite = '/favorite';
  static String add = '/add';
  static String message = '/message';
  static String profile = '/profile';
}

final _rootNavigatorKey = GlobalKey<NavigatorState>();

final appRouter = GoRouter(
    initialLocation: '/onboarding',
    navigatorKey: _rootNavigatorKey,
    debugLogDiagnostics: true,
    routes: [
      AppRoute(ScreenPaths.onboarding, (s) => OnboardingScreen()),
      ShellRoute(
          builder: (context, state, child) {
            return HoardrScaffold(child: child);
          },
          routes: [
            AppRoute(
              ScreenPaths.home,
              (s) => HomePage(),
            ),
            AppRoute(ScreenPaths.favorite, (s) => FavoritesPage()),
            AppRoute(ScreenPaths.add, (s) => AddItemsPage()),
            AppRoute(ScreenPaths.message, (s) => MessagesPage()),
            AppRoute(ScreenPaths.profile, (s) => ProfilePage()),
          ])
    ]);

class AppRoute extends GoRoute {
  AppRoute(String path, Widget Function(GoRouterState s) builder,
      {List<GoRoute> routes = const [], this.useFade = false})
      : super(
            path: path,
            routes: routes,
            pageBuilder: (context, state) {
              final pageContent = Scaffold(
                body: builder(state),
                resizeToAvoidBottomInset: false,
              );
              if (useFade) {
                return CustomTransitionPage(
                    child: pageContent,
                    transitionsBuilder:
                        ((context, animation, secondaryAnimation, child) {
                      return FadeTransition(opacity: animation, child: child);
                    }));
              }
              return CupertinoPage(child: pageContent);
            });
  final bool useFade;
}



// AppRoute(ScreenPaths.onboarding, (s) => OnboardingScreen()),