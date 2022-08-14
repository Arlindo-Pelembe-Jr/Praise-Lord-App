import 'package:cloud_firestore_odm/annotation.dart';
import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

part 'meditation.g.dart';

@JsonSerializable(explicitToJson: true)
class Meditation {
  final String? id;
  final String? autor;
  final String? categoria;
  final String? data;
  final String? mensagem;
  final String? titulo;

  Meditation(
      {required this.autor,
      required this.categoria,
      required this.data,
      required this.id,
      required this.mensagem,
      required this.titulo});
  factory Meditation.fromJson(Map<String, dynamic> json) =>
      _$MeditationFromJson(json);

  Map<String, dynamic> toJson() => _$MeditationToJson(this);
}

@Collection<Meditation>('devocionais')
final meditationRef = MeditationCollectionReference();
