import 'dart:developer';

import 'package:coder_praise_lord_app/src/data/entities/devocional.dart';

class DevocionalService {
  Future<void> addDevocional(Devotional devocionalModel) async {
    await devocionalRef
        .add(devocionalModel)
        .then((value) => log('Devocional Adicionado'))
        .catchError((error) => log('Falha ao Adiconar $error'));
  }
}
