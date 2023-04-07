import 'package:flutter/material.dart';
import 'package:flutter_application_1/feature/homepage/homepage.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: "/",
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case "/": 
           (context) => MaterialPageRoute(
            builder: (context) => HomePageScreen(),
            settings: settings
            );
        }
      },
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePageScreen(),
    );
  }
}

