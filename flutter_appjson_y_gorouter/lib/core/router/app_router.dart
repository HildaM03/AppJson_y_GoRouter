import 'package:flutter/material.dart';
import 'package:flutter_appjson_y_gorouter/presentacion/pages/home_page/home_page.dart';
import 'package:go_router/go_router.dart';




final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (context, state) {
        return const HomePage();
      },
    ),
  ],
);
