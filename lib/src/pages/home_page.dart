// ignore_for_file: avoid_print

import 'package:coder_praise_lord_app/src/components/custom_button.dart';
import 'package:coder_praise_lord_app/src/components/grid_view_count.dart';
import 'package:coder_praise_lord_app/src/components/main_app_bar.dart';
import 'package:coder_praise_lord_app/src/helpers/constants.dart';
import 'package:coder_praise_lord_app/src/helpers/screen_dimensions.dart';
import 'package:coder_praise_lord_app/src/pages/devocional/devocional_page.dart';
import 'package:coder_praise_lord_app/src/pages/forms/post_document.dart';
import 'package:coder_praise_lord_app/src/pages/gospel/gospel_page.dart';
import 'package:coder_praise_lord_app/src/pages/meditation/meditation_page.dart';
import 'package:coder_praise_lord_app/src/utils/utils.dart';
import 'package:flutter/material.dart';

import '../settings/settings_view.dart';

/// Displays a list of SampleItems.
class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  static const routeName = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            ConstantsApp.mainImage,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
          MainAppBar(
            childrens: [
              const Text('Praise Lord'),
              IconButton(
                icon: const Icon(Icons.menu),
                onPressed: () async {
                  await showMenu(
                    context: context,
                    position: RelativeRect.fromLTRB(
                        widthScreen(context) / 2,
                        heightScreen(context) / 22,
                        widthScreen(context) / 2,
                        0),
                    items: [
                      const PopupMenuItem(
                        value: 1,
                        child: Text("Definições"),
                      ),
                      const PopupMenuItem(
                        value: 2,
                        child: Text("Criar Conteudo"),
                      ),
                      const PopupMenuItem(
                        value: 3,
                        child: Text("Sair"),
                      ),
                    ],
                    elevation: 8.0,
                  ).then((value) {
                    switch (value) {
                      case 1:
                        Navigator.restorablePushNamed(
                            context, SettingsView.routeName);
                        break;
                      case 2:
                        Navigator.restorablePushNamed(
                            context, PostDocument.routeName);
                        break;
                      case 3:
                        break;
                      default:
                    }
                  });
                },
              ),
            ],
          ),
          GridViewCountWidget(
            count: 2,
            items: [
              CustomButton(
                title: 'Devocional Dia',
                onTap: () {
                  print('tap');
                  Navigator.restorablePushNamed(
                      context, DevocionalPage.routeName,
                      arguments: <String, dynamic>{
                        'details': "this is the pass info dynamic",
                        "object": {}
                      });
                },
              ),
              CustomButton(
                title: 'Evangelho',
                onTap: () {
                  Navigator.restorablePushNamed(context, GospelPage.routeName);
                  print('tap');
                },
              ),
              CustomButton(
                title: 'Meditação',
                onTap: () {
                  Navigator.restorablePushNamed(
                      context, MeditationPage.routeName);
                  print('tap');
                },
              ),
              CustomButton(
                title: 'Definições',
                onTap: () {
                  print('tap');
                  Navigator.restorablePushNamed(
                      context, SettingsView.routeName);
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}
