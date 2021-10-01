import 'package:flutter/material.dart';
import 'package:test_app/screens/Home/Home.dart';
import 'package:test_app/screens/auth/signup.dart';
import 'package:test_app/screens/chat_screen.dart';
import 'package:test_app/screens/walker_detail.dart';
import 'package:test_app/screens/welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: WelcomeScreen(),
      routes: {
        SignUpScreen.routeName: (context) => SignUpScreen(),
        HomeScreen.routeName: (context) => HomeScreen(),
        WalkerDetailScreen.routeName: (context) => WalkerDetailScreen(),
        ChatScreen.routeName: (context) => ChatScreen(),
      },
    );
  }
}
