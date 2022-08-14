import 'package:cloud_firestore_odm/annotation.dart';
import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

part 'gospel.g.dart';

@JsonSerializable(explicitToJson: true)
class Gospel {
  final String? id;
  final String? autor;
  final String? categoria;
  final String? data;
  final String? mensagem;
  final String? titulo;

  Gospel(
      {required this.autor,
      required this.categoria,
      required this.data,
      required this.id,
      required this.mensagem,
      required this.titulo});

  factory Gospel.fromJson(Map<String, dynamic> json) => _$GospelFromJson(json);

  Map<String, dynamic> toJson() => _$GospelToJson(this);
}

@Collection<Gospel>('evangelho')
final gospelRef = GospelCollectionReference();
