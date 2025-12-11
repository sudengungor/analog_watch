import 'package:flutter/material.dart';
import 'package:rickandmorty/app/locator.dart';
import 'package:rickandmorty/app/router.dart';
import 'package:rickandmorty/app/theme.dart';

void main() => {
  //setUpLocator();
  runApp(const MyApp())
};

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router( // material app in router ı sarması kontrol altına alması için
      routerConfig: router,  
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      
    );
  }
}