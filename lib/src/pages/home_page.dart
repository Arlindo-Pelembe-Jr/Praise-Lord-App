// ignore_for_file: avoid_print

import 'package:coder_praise_lord_app/src/components/custom_button.dart';
import 'package:coder_praise_lord_app/src/components/grid_view_count.dart';
import 'package:coder_praise_lord_app/src/components/main_app_bar.dart';
import 'package:coder_praise_lord_app/src/helpers/constants.dart';
import 'package:coder_praise_lord_app/src/pages/devocional/devocional_page.dart';
import 'package:coder_praise_lord_app/src/pages/gospel/gospel_page.dart';
import 'package:coder_praise_lord_app/src/pages/meditation/meditation_page.dart';
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
                icon: const Icon(Icons.settings),
                onPressed: () {
                  Navigator.restorablePushNamed(
                      context, SettingsView.routeName);
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
