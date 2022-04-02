import 'package:flutter/material.dart';

import 'package:random_name_generator_v2/new_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Random Name Generator'),
        backgroundColor: Colors.pinkAccent,
      ),
      body: const Center(
        child: NewWidget(),
      ),
    );
  }
}
