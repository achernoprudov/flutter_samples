import 'package:flutter/material.dart';
import 'package:flutter_samples/src/navigation/router.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.cyanAccent),
        scaffoldBackgroundColor: const Color(0xFFECDAC3),
        // primarySwatch: Colors.green,
      ),
      routerConfig: appRouter,
    );
  }
}
