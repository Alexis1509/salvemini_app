import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:url_launcher/url_launcher.dart';

class InfoRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Salvemini App 2.0', style: TextStyle(color: Colors.black)),
          backgroundColor: Colors.purple.withOpacity(0.6),
        ),
        body: Markdown(
            data:
                "App open-source non ufficiale per Argo ScuolaNext.",
            onTapLink: (href) {
              if (href == 'https://app.debug') {
                Navigator.of(context).pushNamed('/debugApi');
              } else {
                launch(href);
              }
            }));
  }
}
