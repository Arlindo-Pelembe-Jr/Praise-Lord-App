// ignore_for_file: avoid_unnecessary_containers

import 'package:coder_praise_lord_app/src/components/custom_dropdown.dart';
import 'package:coder_praise_lord_app/src/controller/form_controller/post_document_controller.dart';
import 'package:coder_praise_lord_app/src/helpers/screen_dimensions.dart';
import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';

class PostDocument extends StatelessWidget {
  PostDocument({Key? key}) : super(key: key);

  static const routeName = '/postDocument';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Stack(
        children: [
          Container(
            child: Positioned(
              top: MediaQuery.of(context).viewInsets.top,
              left: 0,
              right: 0,
              child: Container(
                decoration: const BoxDecoration(color: Colors.grey),
                height: 50,
                child: ButtonBar(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        context.read<PostDocumentController>().onClickBold();
                      },
                      child: const Text('Bold'),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            margin: EdgeInsets.fromLTRB(
                8, MediaQuery.of(context).size.height / 12, 8, 0),
            child: ListView(
              padding: const EdgeInsets.all(10),
              children: <Widget>[
                CustomDropDownTextField(
                  items: const [
                    "Meditação",
                    "Evangelho",
                    "Devocional Diário",
                  ],
                  placeholder: "Categoria",
                  currentSelectedValue: "Meditação",
                  width: widthScreen(context),
                  onChange: (value) {
                    context
                        .read<PostDocumentController>()
                        .onChangeCategory(value);
                  },
                ),
                TextField(
                  controller:
                      context.watch<PostDocumentController>().controllerTitle,
                  decoration: const InputDecoration(
                    labelText: 'Titulo',
                  ),
                  onChanged: (val) {
                    context.read<PostDocumentController>().onChaneTitle(val);
                  },
                ),
                const SizedBox(
                  height: 15,
                ),
                TextField(
                  keyboardType: TextInputType.multiline,
                  controller:
                      context.watch<PostDocumentController>().controllerMessage,
                  maxLines: null,
                  decoration: const InputDecoration(
                    labelText: 'Mensagem',
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (val) {
                    context.read<PostDocumentController>().onChangeMessage(val);
                  },
                ),
                const SizedBox(
                  height: 15,
                ),
                TextField(
                  controller:
                      context.watch<PostDocumentController>().controllerAuthor,
                  decoration: const InputDecoration(
                    labelText: 'Autor',
                  ),
                  onChanged: (value) {
                    context
                        .read<PostDocumentController>()
                        .onChangeAuthor(value);
                  },
                ),
                const SizedBox(
                  height: 50,
                ),
                ButtonBar(
                  children: [
                    ElevatedButton(
                      onPressed: () async {
                        context
                            .read<PostDocumentController>()
                            .onSubmit(context);
                        Navigator.pop(context);
                      },
                      child: const Text('Gravar'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
