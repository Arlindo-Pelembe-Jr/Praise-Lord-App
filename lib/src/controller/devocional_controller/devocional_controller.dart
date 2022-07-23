import 'dart:developer';

import 'package:coder_praise_lord_app/src/services/devocional_service.dart';
import 'package:flutter/foundation.dart';

class DevocionalController with ChangeNotifier, DiagnosticableTreeMixin {
  int number = 0;
  int get getNumber => number;
  DevocionalService? devocionalService;
//  set setNumber(int number) => this.number = number; = 0;
  DevocionalController(DevocionalService devocionalService) {
    devocionalService = devocionalService;
  }
  void increment() {
    number++;
    notifyListeners();
  }

  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    // DiagnosticableNode diagnosticableNode;
    properties.add(IntProperty("number", number));
  }
}
