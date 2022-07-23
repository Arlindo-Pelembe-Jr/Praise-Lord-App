import 'package:cloud_firestore_odm/annotation.dart';
import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

part 'devocional.g.dart';

@JsonSerializable(explicitToJson: true)
class Devotional {
  final String? id;
  final String? autor;
  final String? categoria;
  final String? data;
  final String? mensagem;
  final String? titulo;

  Devotional(
      {required this.autor,
      required this.categoria,
      required this.data,
      required this.id,
      required this.mensagem,
      required this.titulo});
}

@Collection<Devotional>('devocionais_diarios')
final devocionalRef = DevotionalCollectionReference();
