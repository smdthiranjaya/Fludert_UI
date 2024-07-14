import 'package:fludert/screens/dashboard.dart';
import 'package:fludert/screens/forecast.dart';
import 'package:fludert/screens/home_map.dart';
import 'package:fludert/screens/login.dart';
import 'package:fludert/screens/profile.dart';
import 'package:fludert/screens/register.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Profile(),
    );
  }
}
