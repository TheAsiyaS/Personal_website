import 'package:flutter/material.dart';

class Works extends StatelessWidget {
  final ScrollController _scrollController = ScrollController();

  Works({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          controller: _scrollController,
          child: Column(
            children: [],
          )),
    );
  }
}
