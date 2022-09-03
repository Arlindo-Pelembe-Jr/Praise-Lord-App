// ignore_for_file: must_be_immutable, avoid_unnecessary_containers, avoid_print

import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:coder_praise_lord_app/src/controller/devocional_controller/devocional_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';

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
      body: StreamBuilder<QuerySnapshot>(
        stream: context.read<DevocionalController>().getStreamDevotionalDay(),
        builder: (context, snapshot) {
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
          return ListView(
            children:
                snapshot.data!.docs.map((DocumentSnapshot documentSnapshot) {
              Devotional devotional = documentSnapshot.data() as Devotional;
              return Column(
                children: [
                  const SizedBox(
                    height: 58,
                  ),
                  Text(
                    '${devotional.titulo}',
                    style: const TextStyle(
                      fontSize: 22.6,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  StyledText(
                    text: """${devotional.mensagem}""",
                    newLineAsBreaks: true,
                    style: const TextStyle(
                      fontSize: 20.6,
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
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    'Autor: ${devotional.autor}',
                    style: const TextStyle(
                      fontSize: 16.6,
                    ),
                  )
                ],
              );
            }).toList(),
          );
        },
      ),
    );
  }
}
