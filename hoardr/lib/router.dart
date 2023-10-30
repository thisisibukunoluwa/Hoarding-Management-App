import 'package:go_router/go_router.dart';
import 'package:hoardr/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:hoardr/screens/additems/add_items_page.dart';
import 'package:hoardr/screens/auth/forgot_password_page.dart';
import 'package:hoardr/screens/auth/login_page.dart';
import 'package:hoardr/screens/categories/categories_page.dart';
import 'package:hoardr/screens/favorites/favorites_page.dart';
import 'package:hoardr/screens/hoardr_scaffold.dart';
import 'package:hoardr/screens/main/home_page.dart';
import 'package:hoardr/screens/messages/messages_page.dart';
import 'package:hoardr/screens/newlyadded/newly_added_items_page.dart';
import 'package:hoardr/screens/onboarding/onboarding_page.dart';
import 'package:hoardr/screens/userprofile/profile_page.dart';

class ScreenPaths {
  static String home = '/';
  static String onboarding = '/onboarding';
  static String login = '/login';
  static String forgotPassword = '/forgot-password';
  static String favorite = '/favorites';
  static String newlyAdded = '/newly-added';
  static String add = '/add';
  static String message = '/message';
  static String profile = '/profile';
  static String categories = '/categories';
}

final _rootNavigatorKey = GlobalKey<NavigatorState>();

final appRouter = GoRouter(
    initialLocation: '/onboarding',
    navigatorKey: _rootNavigatorKey,
    debugLogDiagnostics: true,
    routes: [
      AppRoute(ScreenPaths.onboarding, (s) => CategoriesPage()),
      AppRoute(ScreenPaths.onboarding, (s) => OnboardingScreen()),
      AppRoute(ScreenPaths.forgotPassword, (s) => ForgotPassword()),
      AppRoute(
        ScreenPaths.login,
        (s) => LoginPage(
          onSubmit: (String srg) {},
        ),
      ),
      ShellRoute(
          builder: (context, state, child) {
            return HoardrScaffold(child: child);
          },
          routes: [
            AppRoute(ScreenPaths.home, (s) => HomePage(), routes: [
              AppRoute(ScreenPaths.newlyAdded, (s) => NewlyAddedItemsPage())
            ]),
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