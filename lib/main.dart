import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'base/base.dart';
import 'component/language/c_language.dart';
import 'component/language/generated/l10n.dart';
import 'component/shared/pages.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await BPrefs.init();
  CLanguage.init();

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Giang Giang",
      localizationsDelegates: const [
        AppLanguage.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      locale: CLanguage.locale,
      supportedLocales: AppLanguage.delegate.supportedLocales,
      theme: ThemeData(
        fontFamily: "Roboto",
        brightness: Brightness.light,
        appBarTheme: AppBarTheme(
          centerTitle: true,
          elevation: 0,
          iconTheme: IconThemeData(
            color: kColorIcon, //change your color here
          ),
          titleTextStyle: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 14.fs,
            color: Colors.amber,
          ),
        ),
      ),
      initialRoute: "/",
      getPages: SPages.listPages,
      unknownRoute: SPages.listPages.first,
    );
  }
}
