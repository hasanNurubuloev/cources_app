import 'package:cources_app/core/app/router/app_router.dart';
import 'package:cources_app/injection/injection.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.white,
        useMaterial3: true,
      ),
      routerConfig: getIt<AppRouter>().config(),
    );
  }
}
