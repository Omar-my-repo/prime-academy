import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:prime_academy/screens/layout/layout_screen.dart';
import 'package:prime_academy/shared/routes.dart';
import 'package:prime_academy/shared/style/theme_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Prime Academy',
      debugShowCheckedModeBanner: false,
      initialRoute: LayoutScreen.routeName,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: Locale('ar'),
      theme: MyThemeData.lightTheme,
      routes: MyRoutes.allRoutes,
    );
  }
}
