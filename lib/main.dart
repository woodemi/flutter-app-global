import 'package:app_global/tanslations/locale_util.dart';
import 'package:app_global/tanslations/tanslations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'HomePage.dart';

Translations translations;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Application',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      localizationsDelegates: [
        const TranslationsDelegate(), // 指向默认的处理翻译逻辑的库（后面会讲）
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: localeUtil.supportedLocales(),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var text = '测试语言本地化';

  @override
  Widget build(BuildContext context) {
    translations = Translations.of(context);
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
            Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
          },
        ),
      ),
    );
  }
}
