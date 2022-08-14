import 'package:coder_praise_lord_app/src/controller/devocional_controller/devocional_controller.dart';
import 'package:coder_praise_lord_app/src/controller/form_controller/post_document_controller.dart';
import 'package:coder_praise_lord_app/src/controller/gospel_controller.dart/gospel_controller.dart';
import 'package:coder_praise_lord_app/src/controller/meditation_controller/meditation_controller.dart';
import 'package:coder_praise_lord_app/src/pages/devocional/devocional_page.dart';
import 'package:coder_praise_lord_app/src/pages/forms/post_document.dart';
import 'package:coder_praise_lord_app/src/pages/gospel/gospel_page.dart';
import 'package:coder_praise_lord_app/src/pages/home_page.dart';
import 'package:coder_praise_lord_app/src/pages/meditation/meditation_page.dart';
import 'package:coder_praise_lord_app/src/pages/reader_page.dart';
import 'package:coder_praise_lord_app/src/services/devocional_service.dart';
import 'package:coder_praise_lord_app/src/services/gospel_service.dart';
import 'package:coder_praise_lord_app/src/services/meditation_service.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'settings/settings_controller.dart';
import 'settings/settings_view.dart';

/// The Widget that configures your application.
class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
    required this.settingsController,
  }) : super(key: key);

  final SettingsController settingsController;

  @override
  Widget build(BuildContext context) {
    // Glue the SettingsController to the MaterialApp.
    //
    // The AnimatedBuilder Widget listens to the SettingsController for changes.
    // Whenever the user updates their settings, the MaterialApp is rebuilt.
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => settingsController,
        ),
        ChangeNotifierProvider(
            create: (_) => DevocionalController(DevocionalService())),
        ChangeNotifierProvider(create: (_) => PostDocumentController()),
        ChangeNotifierProvider(
            create: (_) => GospelController(GospelService())),
        ChangeNotifierProvider(
            create: (_) => MeditationController(MeditationService()))
      ],
      child: AnimatedBuilder(
        animation: settingsController,
        builder: (BuildContext context, Widget? child) {
          return MaterialApp(
            // Providing a restorationScopeId allows the Navigator built by the
            // MaterialApp to restore the navigation stack when a user leaves and
            // returns to the app after it has been killed while running in the
            // background.
            restorationScopeId: 'app',
            debugShowCheckedModeBanner: false,
            // Provide the generated AppLocalizations to the MaterialApp. This
            // allows descendant Widgets to display the correct translations
            // depending on the user's locale.
            localizationsDelegates: const [],
            supportedLocales: const [
              Locale('en', ''), // English, no country code
            ],

            // Use AppLocalizations to configure the correct application title
            // depending on the user's locale.
            //
            // The appTitle is defined in .arb files found in the localization
            // directory.
            // onGenerateTitle: (BuildContext context) =>
            //     AppLocalizations.of(context)!.appTitle,

            // Define a light and dark color theme. Then, read the user's
            // preferred ThemeMode (light, dark, or system default) from the
            // SettingsController to display the correct theme.
            theme: ThemeData(),
            darkTheme: ThemeData.dark(),
            themeMode: settingsController.themeMode,

            // Define a function to handle named routes in order to support
            // Flutter web url navigation and deep linking.
            onGenerateRoute: (RouteSettings routeSettings) {
              return MaterialPageRoute<void>(
                settings: routeSettings,
                builder: (BuildContext context) {
                  switch (routeSettings.name) {
                    case SettingsView.routeName:
                      return SettingsView(controller: settingsController);
                    case ReaderPage.routeName:
                      return ReaderPage();
                    case DevocionalPage.routeName:
                      return DevocionalPage();
                    case GospelPage.routeName:
                      return GospelPage();
                    case MeditationPage.routeName:
                      return MeditationPage();
                    case PostDocument.routeName:
                      return PostDocument();
                    case HomePage.routeName:
                    default:
                      return const HomePage();
                  }
                },
              );
            },
          );
        },
      ),
    );
  }
}
