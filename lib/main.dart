import 'package:coder_praise_lord_app/src/app.dart';
import 'package:coder_praise_lord_app/src/settings/settings_controller.dart';
import 'package:coder_praise_lord_app/src/settings/settings_service.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  final settingsController = SettingsController(SettingsService());
  await settingsController.loadSettings();
  runApp(MyApp(settingsController: settingsController));
}
