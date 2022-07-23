import 'dart:developer';

import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';
import 'package:coder_praise_lord_app/src/data/entities/meditation.dart';
import 'package:coder_praise_lord_app/src/pages/reader_page.dart';
import 'package:flutter/material.dart';

class MeditationPage extends StatelessWidget {
  MeditationPage({Key? key}) : super(key: key);
  static const String routeName = "/meditation";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: FirestoreBuilder<MeditationQuerySnapshot>(
        ref: meditationRef,
        builder: (context, snapshot, child) {
          if (snapshot.hasError) {
            log(snapshot.error.toString());
            return const Center(
              child: Text("An error has occured"),
            );
          }
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          if (!snapshot.hasData) {
            return const Center(
              child: Text("No Data"),
            );
          }
          MeditationQuerySnapshot meditationQuerySnapshot =
              snapshot.requireData;
          return ListView.builder(
            itemCount: meditationQuerySnapshot.docs.length,
            itemBuilder: (context, index) {
              Meditation meditation = meditationQuerySnapshot.docs[index].data;
              return ListTile(
                  title: Text('Titulo: ${meditation.titulo.toString()} '),
                  subtitle: Text('Autor: ${meditation.autor.toString()}'),
                  onTap: () {
                    Navigator.restorablePushNamed(context, ReaderPage.routeName,
                        arguments: <String, dynamic>{
                          'title': meditation.titulo,
                          'message': meditation.mensagem,
                          'footer': meditation.autor,
                        });
                  });
            },
          );
        },
      ),
    );
  }
}
