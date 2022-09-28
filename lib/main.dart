import 'package:flutter/material.dart';
import 'package:qrsystem/pages/home/home.dart';
import 'package:qrsystem/pages/login/login.dart';
import 'package:provider/provider.dart';
import 'package:qrsystem/provider/token_provider.dart';

void main() => runApp(const StartApp());

class StartApp extends StatelessWidget {
  const StartApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Provider<String>.value(
      value: 'pathfinder',
      child: MultiProvider(
        providers: [ChangeNotifierProvider(create: (_) => TokenProvider())],
        child: MaterialApp(
          title: 'pathfinder QR Access System',
          theme: ThemeData(
            primaryColor: Colors.white,
            primarySwatch: Colors.orange,
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
          initialRoute: '/loginPage',
          routes: {
            '/loginPage': (context) => LoginPage(),
            '/HomePage': (context) => Home()
          },
        ),
      ),
    );
  }
}
