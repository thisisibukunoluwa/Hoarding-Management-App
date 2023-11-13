import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hoardr/router.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'theme/theme.dart';
import 'package:flutter/cupertino.dart';

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  // FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  await Future.delayed(const Duration(seconds: 1));
  FlutterNativeSplash.remove();
  runApp(const HoardrApp());
}

class HoardrApp extends StatelessWidget {
  const HoardrApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
        child: ScreenUtilInit(
      designSize: Size(393, 852),
      builder: (context, child) {
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          theme: AppTheme.light,
          routeInformationParser: appRouter.routeInformationParser,
          routeInformationProvider: appRouter.routeInformationProvider,
          routerDelegate: appRouter.routerDelegate,
          title: 'Hoardr',
        );
      },
    ));
  }
}
