import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'main.dart';

class HomePage extends StatefulWidget {
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var text = '测试语言本地化';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(text),
      ),
      body: Center(
        child: FlatButton(
          child: Text('click'),
          color: Colors.grey,
          onPressed: () {
            print('Pressedon Pressedon  Pressedon Pressed');
            print(translations.text("about_page_slogan"));
          },
        ),
      ),
    );
  }
}
