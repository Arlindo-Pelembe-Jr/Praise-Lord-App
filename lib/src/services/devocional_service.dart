import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:coder_praise_lord_app/src/data/entities/devocional.dart';

class DevocionalService {
  Future<void> addDevocional(Devotional devocionalModel) async {
    await devocionalRef
        .add(devocionalModel)
        .then((value) => log('Devocional Adicionado'))
        .catchError((error) => log('Falha ao Adiconar $error'));
  }

  Stream<QuerySnapshot> streamDevotionalDay() {
    return devocionalRef.reference
        .orderBy('data', descending: true)
        .limit(1)
        .get()
        .asStream();
  }
}
