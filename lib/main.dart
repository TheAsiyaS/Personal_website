import 'package:flutter/material.dart';

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
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
//https://img.freepik.com/premium-photo/website-header-portrait-gorgeous-smiling-young-female-using-laptop-computer-workplace-side_386167-6922.jpg
