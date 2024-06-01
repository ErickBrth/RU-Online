import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ru_online/presentation/home/home.dart';
import 'package:ru_online/presentation/login/login.dart';

final routes = GoRouter(routes: [
  GoRoute(
    path: '/',
    builder: (BuildContext context, GoRouterState state) => const Login(),
  ),
  GoRoute(
    path: '/home',
    builder: (BuildContext context, GoRouterState state) => const Home(),
  ),
]);
