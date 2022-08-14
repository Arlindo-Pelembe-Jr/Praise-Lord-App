// ignore_for_file: must_be_immutable, avoid_unnecessary_containers, avoid_print

import 'dart:developer';

import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';
import 'package:coder_praise_lord_app/src/controller/devocional_controller/devocional_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';

import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';
import 'package:coder_praise_lord_app/src/data/entities/devocional.dart';
import 'package:styled_text/styled_text.dart';

class DevocionalPage extends StatelessWidget {
  DevocionalPage({Key? key}) : super(key: key);
  static const String routeName = "/devocional";
  // DevocionalController devocionalController = DevocionalController();
  int? number;
  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as Map;
    number = context.read<DevocionalController>().getNumber;
    return Scaffold(
      appBar: AppBar(),
      body: FirestoreBuilder<DevotionalQuerySnapshot>(
        ref: devocionalRef.limit(1).orderByData(descending: true),
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
          DevotionalQuerySnapshot devotionalQuerySnapshot =
              snapshot.requireData;
          log(devotionalQuerySnapshot.toString());

          return ListView.separated(
              separatorBuilder: (context, index) {
                return const Divider();
              },
              padding: const EdgeInsets.all(10),
              itemCount: devotionalQuerySnapshot.docs.length,
              itemBuilder: (context, index) {
                Devotional devotional =
                    devotionalQuerySnapshot.docs[index].data;
                return ListTile(
                  title: Text(devotional.titulo.toString()),
                  subtitle: StyledText(
                    textAlign: TextAlign.justify,
                    text: devotional.mensagem.toString(),
                    style: const TextStyle(
                      fontSize: 16,
                    ),
                    tags: {
                      'b': StyledTextTag(
                          style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      )),
                      'i': StyledTextTag(
                          style: TextStyle(
                              fontStyle: FontStyle.italic,
                              color: Colors.green.shade400)),
                    },
                  ),
                );
              });
        },
      ),
    );
  }
}
