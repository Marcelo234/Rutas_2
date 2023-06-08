import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'pages/azul_page.dart';
import 'pages/verde_page.dart';
import 'pages/rojo_page.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: GoRouter(routes: [
        GoRoute(path: "/",builder: (context, state) => AzulPage(),),
        GoRoute(path: "/verde",builder: (context, state) => VerdePage(),),
        GoRoute(path: "/rojo",builder: (context, state) => RojoPage(),),
      ]),
    );
  }
}