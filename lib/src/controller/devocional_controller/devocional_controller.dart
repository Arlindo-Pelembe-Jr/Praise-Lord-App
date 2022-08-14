import 'dart:developer';

import 'package:coder_praise_lord_app/src/data/entities/devocional.dart';
import 'package:coder_praise_lord_app/src/services/devocional_service.dart';
import 'package:flutter/foundation.dart';

class DevocionalController with ChangeNotifier, DiagnosticableTreeMixin {
  int number = 0;
  int get getNumber => number;
  DevocionalService? devocionalService;
//  set setNumber(int number) => this.number = number; = 0;
  DevocionalController(this.devocionalService);
  void increment() {
    number++;
    notifyListeners();
  }

  void onChange(dynamic value) {
    print(value);
  }

  void saveDevotional(Devotional devotional) async {
    await devocionalService?.addDevocional(devotional);
    notifyListeners();
  }

  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    // DiagnosticableNode diagnosticableNode;
    properties.add(IntProperty("number", number));
  }
}
