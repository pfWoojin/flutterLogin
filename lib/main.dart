import 'package:flutter/material.dart';
import 'package:qrsystem/pages/login/login.dart';
import 'package:provider/provider.dart';

void main() => runApp(const StartApp());

class StartApp extends StatelessWidget {
  const StartApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'pathfinder QR Access System',
      theme: ThemeData(
        primaryColor: Colors.white,
        primarySwatch: Colors.orange,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MultiProvider(
        providers: [

        ],
      )
      //LoginPage(),
    );
  }
}
