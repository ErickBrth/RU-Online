import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ru_online/presentation/login/pages/login.dart';
import 'package:ru_online/presentation/navigation/pages/navigation.dart';

final routes = GoRouter(routes: [
  GoRoute(
    path: '/',
    builder: (BuildContext context, GoRouterState state) => const Login(),
  ),
  GoRoute(
    path: '/home',
    builder: (BuildContext context, GoRouterState state) => const Navigation(),
  ),
]);
