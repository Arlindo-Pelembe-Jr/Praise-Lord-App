import 'package:coder_praise_lord_app/src/data/entities/meditation.dart';
import 'package:coder_praise_lord_app/src/services/meditation_service.dart';
import 'package:flutter/cupertino.dart';

class MeditationController with ChangeNotifier {
  MeditationService? meditationService;

  MeditationController(this.meditationService);

  void saveMeditation(Meditation meditation) async {
    await meditationService?.addMeditation(meditation);
    notifyListeners();
  }
}
