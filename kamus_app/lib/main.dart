import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kamusapp/menu/IndoEng.dart';
import 'package:kamusapp/menu/PageEngIndo.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Apps Kamus'),
        backgroundColor: Colors.cyan,
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(20.0),
            ),
            Container(
              child: MaterialButton(
                color: Colors.greenAccent,
                textColor: Colors.black87,
                child: Text('Indonesia ke Inggris'),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context) => PageIndoEng()
                  ));
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
            ),
            Container(
              child: MaterialButton(
                color: Colors.greenAccent,
                textColor: Colors.black87,
                child: Text('Inggris ke Indonesia'),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) => PageEngIndo()
                  ));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
