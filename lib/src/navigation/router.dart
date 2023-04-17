import 'package:flutter_samples/src/navigation/paths.dart';
import 'package:flutter_samples/src/pages/home/home_page.dart';
import 'package:go_router/go_router.dart';

final appRouter = GoRouter(
  routes: [
    GoRoute(
      path: RouterPaths.home,
      builder: (context, state) => const HomePage(),
    ),

  ],
);
