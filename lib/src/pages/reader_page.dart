import 'package:flutter/material.dart';
import 'package:styled_text/styled_text.dart';

class ReaderPage extends StatelessWidget {
  ReaderPage({Key? key}) : super(key: key);
  static const String routeName = "/reader";
  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as Map;
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [
              Text(
                args['title'].toString(),
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              StyledText(
                textAlign: TextAlign.justify,
                text: args['message'].toString(),
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
              const SizedBox(
                height: 10,
              ),
              Text(
                args['footer'].toString(),
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
