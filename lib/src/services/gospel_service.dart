import 'dart:developer';

import 'package:coder_praise_lord_app/src/data/entities/gospel.dart';

class GospelService {
  Future<void> addGospel(Gospel gospel) async {
    await gospelRef
        .add(gospel)
        .then((value) => log('Evangelho Adicionado'))
        .catchError((error) => log('Falha ao Adiconar $error'));
  }
}
