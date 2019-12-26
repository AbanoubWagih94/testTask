import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'localizations.dart';
import 'LocaleHelper.dart';

import './screens/youtube_screen.dart';
import './models/youtube_data.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyApp();
  }
}

class _MyApp extends State<MyApp> {
  SpecificLocalizationDelegate _specificLocalizationDelegate;

  @override
  void initState() {
    super.initState();
    helper.onLocaleChanged = onLocaleChange;
    _specificLocalizationDelegate =
        SpecificLocalizationDelegate(new Locale("en"));
  }

  onLocaleChange(Locale locale) {
    setState(() {
      _specificLocalizationDelegate = new SpecificLocalizationDelegate(locale);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Translate Demo',
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        new FallbackCupertinoLocalisationsDelegate(),
        //app-specific localization
        _specificLocalizationDelegate
      ],
      supportedLocales: [Locale('en'), Locale('ar')],
      locale: _specificLocalizationDelegate.overriddenLocale,
      theme: ThemeData(),
      home: YouTubescreen(),
    );
  }
}
