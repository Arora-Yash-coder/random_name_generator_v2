import 'package:flutter/material.dart';

import 'package:english_words/english_words.dart';

class NewWidget extends StatefulWidget {
  const NewWidget({Key? key}) : super(key: key);

  @override
  _NewWidgetState createState() => _NewWidgetState();
}

class _NewWidgetState extends State<NewWidget> {
  // Collection of all the Word Pairs
  final _suggestions = <WordPair>[];
  // Custom Text Size
  final _biggerFont = const TextStyle(fontSize: 18);

  @override
  Widget build(BuildContext context) {
    return _buildSuggestions();
  }

  Widget _buildSuggestions() {
    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemBuilder: (context, i) {
        if (i.isOdd) {
          return const Divider(
            color: Colors.pinkAccent,
          );
        }
        final index = i ~/ 2;
        if (index >= _suggestions.length) {
          _suggestions.addAll(generateWordPairs().take(10));
        }
        return _buildRow(_suggestions[index]);
      },
    );
  }

  // List Tile UI
  Widget _buildRow(WordPair pair) {
    return ListTile(
      title: Center(
        child: Text(
          pair.asPascalCase,
          style: _biggerFont,
        ),
      ),
    );
  }
}
