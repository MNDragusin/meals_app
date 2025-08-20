import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:meals_app/AppTheme.dart';
import 'package:meals_app/screens/categories_screen.dart';

void main(){
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp
  ]).then((_) =>runApp(const App()));
}

class App extends StatelessWidget{
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: defaultTheme,
      home: const CategoriesScreen()
    );
  }
}