import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random(); // Add this line.
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to Flutter'),
        ),
        body: Center(
          child: Text(wordPair.asPascalCase),
        ),
      ),
    );
  }
}

//Stateless widgets are immutable, meaning that their properties can't change—all values are final.

//Stateful widgets maintain state that might change during the lifetime of the widget

/*. Implementing a stateful widget requires at least two classes: 1) a StatefulWidget that creates an instance of a State class.
  The StatefulWidget object is, itself,
  immutable and can be thrown away and regenerated
 , but the State object persists over the lifetime of the widget. */
