import 'package:flutter/material.dart';
import 'package:instagram_pcto/screens/login/login_screen.dart';

void main() {
  runApp(const MyApp());
}
//ciao 
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Instagram',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: const Color.fromARGB(255, 255, 0, 0)),
      ),
      home: LoginScreen()
    );
  }
}
