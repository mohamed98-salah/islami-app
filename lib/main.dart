import 'package:face_book/core/application_theme_manager.dart';
import 'package:face_book/core/settings_provider.dart';
import 'package:face_book/layout/layout_viwe.dart';
import 'package:face_book/modules/hadeth/hadeth_detalis_view.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:face_book/modules/quran/quran_detalis_view.dart';
import 'package:face_book/modules/splash/splash_view.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var provider = SettingsProvider();
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ApplicationThemeManager.lightThemeData,
      debugShowCheckedModeBanner: false,
      darkTheme: ApplicationThemeManager.darkThemeData,
      themeMode: ThemeMode.dark,
      locale: Locale (provider.currentLanguageCode),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      initialRoute: "/",
      routes: {
        SplashView.routeName: (context) => const SplashView(),
        LayoutViwe.routeName: (context) => const LayoutViwe(),
        QuranDetalisView.routeName:(context) =>  QuranDetalisView(),
        HadethDetalisView.routename:(context) =>  HadethDetalisView(),

      },
    );
  }
}
