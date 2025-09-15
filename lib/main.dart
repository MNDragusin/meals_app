import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:meals_app/app_theme.dart';
import 'package:meals_app/screens/tabs.dart';

void main(){
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp
  ]).then((_) =>runApp(const MyApp()));
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme,
      home: const TabsScreen()
    );
  }
}