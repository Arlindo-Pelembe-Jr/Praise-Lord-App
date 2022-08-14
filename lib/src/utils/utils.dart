import 'package:coder_praise_lord_app/src/helpers/screen_dimensions.dart';
import 'package:coder_praise_lord_app/src/pages/forms/post_document.dart';
import 'package:coder_praise_lord_app/src/settings/settings_view.dart';
import 'package:flutter/material.dart';

class Utils {
  static void showPopupMenu(BuildContext context) async {
    await showMenu(
      context: context,
      position: RelativeRect.fromLTRB(widthScreen(context) / 2,
          heightScreen(context) / 22, widthScreen(context) / 2, 0),
      items: [
        PopupMenuItem(
          value: 1,
          onTap: () {
            Navigator.restorablePushNamed(context, SettingsView.routeName);
          },
          child: const Text("Definições"),
        ),
        PopupMenuItem(
          value: 2,
          onTap: () async {
            Navigator.restorablePushNamed(context, PostDocument.routeName);
          },
          child: const Text("Criar Conteudo"),
        ),
        const PopupMenuItem(
          value: 3,
          child: Text("Sair"),
        ),
      ],
      elevation: 8.0,
    ).then((value) {
// NOTE: even you didnt select item this method will be called with null of value so you should call your call back with checking if value is not null

      if (value != null) print(value);
    });
  }
}
