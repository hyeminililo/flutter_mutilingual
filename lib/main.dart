import 'package:flutter/material.dart';
import 'package:flutter_multilingual/i18n/app_localizations.dart';
import 'package:flutter_multilingual/i18n/messages.dart';
import 'i18n/messages.dart';

void main() {
  runApp(MyApp());
}

final msg = Messages();

class MyApp extends StatelessWidget {
  MyApp({super.key});
  AppLocalizations appLocalizations = AppLocalizations();
  AppLocalizationDelegate appLocalizationDelegate = AppLocalizationDelegate();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      localizationsDelegates: [
        appLocalizationDelegate,
//        GlobalMaterialLocalizations.delegate,
        //      GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: const [Locale("en"), Locale("ko")],
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    print(msg.widgetMessage);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(msg.appName)),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[Text(msg.widgetMessage)],
      )),
    );
  }
}
