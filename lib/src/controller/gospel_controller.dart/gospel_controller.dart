import 'package:coder_praise_lord_app/src/data/entities/gospel.dart';
import 'package:coder_praise_lord_app/src/services/gospel_service.dart';
import 'package:flutter/cupertino.dart';

class GospelController with ChangeNotifier {
  GospelService? gospelService;
  GospelController(this.gospelService);
  void saveGospel(Gospel gospel) async {
    await gospelService?.addGospel(gospel);
    notifyListeners();
  }
}
