import 'package:coder_praise_lord_app/src/controller/devocional_controller/devocional_controller.dart';
import 'package:coder_praise_lord_app/src/controller/gospel_controller.dart/gospel_controller.dart';
import 'package:coder_praise_lord_app/src/controller/meditation_controller/meditation_controller.dart';
import 'package:coder_praise_lord_app/src/data/entities/devocional.dart';
import 'package:coder_praise_lord_app/src/data/entities/gospel.dart';
import 'package:coder_praise_lord_app/src/data/entities/meditation.dart';
import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';

class PostDocumentController with ChangeNotifier {
  TextEditingController? controllerTitle = TextEditingController();
  TextEditingController? controllerMessage = TextEditingController();
  TextEditingController? controllerAuthor = TextEditingController();
  String? category;
  void onChange(dynamic value) {
    notifyListeners();
  }

  void onChaneTitle(dynamic value) {
    notifyListeners();
  }

  void onChangeMessage(dynamic value) {
    notifyListeners();
  }

  void onChangeAuthor(dynamic value) {
    notifyListeners();
  }

  void onChangeCategory(dynamic value) {
    category = value;
    notifyListeners();
  }

  Future<void> onSubmit(BuildContext context) async {
    DateTime dateTime = DateTime.now();
    Map<String, dynamic> data = {
      "autor": controllerAuthor?.text,
      "titulo": controllerTitle?.text,
      "mensagem": controllerMessage?.text,
      "categoria": category.toString().trim(),
      "data": "${dateTime.month}/${dateTime.day}/${dateTime.year}",
      "id": "",
    };

    switch (category) {
      case "Meditação":
        Meditation meditation = Meditation.fromJson(data);
        context.read<MeditationController>().saveMeditation(meditation);
        break;
      case "Evangelho":
        Gospel gospel = Gospel.fromJson(data);
        context.read<GospelController>().saveGospel(gospel);
        break;
      case "Devocional Diário":
        Devotional devotional = Devotional.fromJson(data);
        context.read<DevocionalController>().saveDevotional(devotional);
        break;
      default:
    }
    clear();
    notifyListeners();
  }

  void onClickBold() {
    controllerMessage?.text += '<b> </b>';
    notifyListeners();
  }

  void clear() {
    controllerAuthor?.clear();
    controllerMessage?.clear();
    controllerTitle?.clear();
  }
}
