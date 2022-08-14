import 'dart:developer';

import 'package:coder_praise_lord_app/src/data/entities/meditation.dart';

class MeditationService {
  Future<void> addMeditation(Meditation meditation) async {
    await meditationRef
        .add(meditation)
        .then((value) => log('Meditacao Adicionada'))
        .catchError((error) => log('Falha ao Adiconar $error'));
  }
}
