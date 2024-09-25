import 'package:cources_app/core/app/app.dart';
import 'package:cources_app/core/local_database/data_base.dart';
import 'package:cources_app/injection/injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: [SystemUiOverlay.bottom]);

  runApp(const MyApp());
}
