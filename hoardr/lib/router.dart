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
  // static String splash = '';
  static String home = '/';
  static String onboarding = '/onboarding';
  static String login = '/login';
  static String forgotPassword = '/forgot-password';
  static String favorite = '/favorites';
  static String newlyAdded = '/newly-added';
  static String add = '/add';
  static String messages = '/messages';
  static String categories = '/categories';
  static String notifications = '/notifications';
}

class ProfileScreenPath {
  static String profile = '/profile';
  static String profileSettings = 'profile-settings';
  static String securitySettings = 'security-settings';
  static String termsAndConditions = 'terms-and-conditions';
  static String faqs = 'faqs';
  static String settingsFullname = 'fullname';
  static String settingsAddress = 'address';
  static String settingsPhoneNumber = 'phonenumber';
  static String settingsEmail = 'emailaddress';
  static String settingsIDNumber = 'idNumber';
  static String settingsUpload = 'upload';
  static String legal = 'legal';
  static String help = 'help';
}

final _rootNavigatorKey = GlobalKey<NavigatorState>();

final appRouter = GoRouter(
    initialLocation: ScreenPaths.onboarding,
    navigatorKey: _rootNavigatorKey,
    debugLogDiagnostics: true,
    routes: [
      // AppRoute(ScreenPaths.onboarding, (s) => CategoriesPage(), useFade: true),
      AppRoute(ScreenPaths.onboarding, (s) => OnboardingScreen()),
      AppRoute(ScreenPaths.login,(s) => LoginPage(onSubmit: (String srg) {})),
      AppRoute(ScreenPaths.forgotPassword, (s) => ForgotPassword()),
      ShellRoute(
          builder: (context, state, child) {
            return HoardrScaffold(child: child);
          },
          routes: [
            AppRoute(ScreenPaths.home, (s) => HomePage()),
            AppRoute(ScreenPaths.newlyAdded,(s) => NewlyAddedItemsPage()),
            AppRoute(ScreenPaths.favorite, (s) => FavoritesPage()),
            AppRoute(ScreenPaths.add, (s) => AddItemsPage()),
            AppRoute(ScreenPaths.messages, (s) => MessagesPage()),
            AppRoute(
              ProfileScreenPath.profile, (s) => ProfilePage(),
              // routes: [
              //   ProfileScreenPath.profileSettings, (s) => Profil
              // ]
            )
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
