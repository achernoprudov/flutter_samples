import 'package:flutter_samples/src/navigation/paths.dart';
import 'package:flutter_samples/src/pages/endless_command/endless_command_page.dart';
import 'package:flutter_samples/src/pages/home/home_page.dart';
import 'package:go_router/go_router.dart';

final appRouter = GoRouter(
  routes: [
    GoRoute(
      path: RouterPaths.home,
      builder: (context, state) => const HomePage(),
    ),
    GoRoute(
      path: RouterPaths.commandAnimation,
      builder: (context, state) => const EndlessCommandPage(),
    )
  ],
);
