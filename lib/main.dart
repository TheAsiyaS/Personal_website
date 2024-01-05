import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:personal_website/Common/Colors&Size.dart';
import 'package:personal_website/Presentation/Home/Home.dart';
import 'package:personal_website/Presentation/Work/Works.dart';


void main() {
  runApp(const MyApp());
}

//flutter run -d chrome --web-renderer html
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  //
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: kblack,
        brightness: Brightness.dark,
        useMaterial3: true,
      ),
      home: Works(),
    );
  }
}
