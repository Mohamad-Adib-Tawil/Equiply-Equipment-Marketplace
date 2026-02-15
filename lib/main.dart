import 'package:flutter/material.dart';
import 'package:wolfera/app/equiply_app.dart';
import 'package:wolfera/core/di/service_locator.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  runApp(const EquiplyApp());
}
