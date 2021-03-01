import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  WordPair wordPair = WordPair.random();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[900],
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.grey[850],
          title: Text(
            "Random Word Pair Generator",
            style: TextStyle(letterSpacing: 1.0),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,

            children: <Widget>[
              Text(
                "Random Word Pair",
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.grey[350],
                  letterSpacing: 2.0,
                ),
              ),

              SizedBox(height: 20.0,),

              FlatButton(
                onPressed: () {
                  setState(() {
                    wordPair = WordPair.random();
                  });
                },
                color: Colors.grey[900],
                child: Text(
                  wordPair.asPascalCase,
                  style: TextStyle(
                    fontSize: 35.0,
                    color: Colors.deepOrange,
                    letterSpacing: 2.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),

        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.refresh, size: 40.0,),
          backgroundColor: Colors.deepOrange,
          onPressed: () {
            setState(() {
              wordPair = WordPair.random();
            });
          },
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
    );
  }
}
