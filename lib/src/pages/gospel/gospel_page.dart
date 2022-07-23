import 'dart:developer';

import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';
import 'package:coder_praise_lord_app/src/data/entities/gospel.dart';
import 'package:coder_praise_lord_app/src/pages/reader_page.dart';
import 'package:flutter/material.dart';

class GospelPage extends StatelessWidget {
  GospelPage({Key? key}) : super(key: key);
  static const String routeName = "/gospel";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: FirestoreBuilder<GospelQuerySnapshot>(
        ref: gospelRef,
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
          GospelQuerySnapshot gospelQuerySnapshot = snapshot.requireData;
          return ListView.builder(
              itemCount: gospelQuerySnapshot.docs.length,
              itemBuilder: (context, index) {
                Gospel gospel = gospelQuerySnapshot.docs[index].data;
                return ListTile(
                  title: Text('Titulo: ${gospel.titulo.toString()} '),
                  subtitle: Text('Autor: ${gospel.autor.toString()}'),
                  onTap: () {
                    Navigator.restorablePushNamed(context, ReaderPage.routeName,
                        arguments: <String, dynamic>{
                          'title': gospel.titulo,
                          'message': gospel.mensagem,
                          'footer': gospel.autor,
                        });
                  },
                );
              });
        },
      ),
    );
  }
}
