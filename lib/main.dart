<<<<<<< HEAD
import 'package:flutter/material.dart';
import 'package:rickandmorty/app/locator.dart';
import 'package:rickandmorty/app/router.dart';
import 'package:rickandmorty/app/theme.dart';

void main() => {
  //setUpLocator();
  runApp(const MyApp())
};
=======
import "package:analog_clock/analog_watch.dart";
import "package:flutter/material.dart";

void main(){
  runApp(const MyApp());
}
>>>>>>> 94878cfedef48129df664dce9d8ddc9a8510651b

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
    return MaterialApp.router( // material app in router ı sarması kontrol altına alması için
      routerConfig: router,  
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      
=======
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyAnalogWatch(),
>>>>>>> 94878cfedef48129df664dce9d8ddc9a8510651b
    );
  }
}