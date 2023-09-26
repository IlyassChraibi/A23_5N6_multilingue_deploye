import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'home.dart';
import 'i18n/intl_delegate.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(


      // TODO enregistrer les delegate pour la traduction
      localizationsDelegates: const [
        DemoDelegate(),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      // TODO annoncer les locales qui sont gerees
      supportedLocales: const [
        Locale('en'),
        Locale('fr'),
        Locale('no'), // Norvégien
        Locale('ja'), // Japonais
      ],


      title: 'Flutter Demo',
      home: DemoMultiLing(),
    );
  }
}