import 'package:flutter/material.dart';
import 'package:flutter_samples/src/navigation/paths.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  static const _samples = [
    SampleItem(
      title: 'Endless command animation',
      navigationPath: RouterPaths.commandAnimation,
    ),
  ];

  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home page'),
      ),
      body: ListView.builder(
        itemCount: _samples.length,
        itemBuilder: (context, index) {
          final sample = _samples[index];
          return ListTile(
            title: Text(sample.title),
            onTap: () => context.go(sample.navigationPath),
          );
        },
      ),
    );
  }
}

class SampleItem {
  final String title;
  final String navigationPath;

  const SampleItem({
    required this.title,
    required this.navigationPath,
  });
}
