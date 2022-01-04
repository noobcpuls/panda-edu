import 'package:flutter/material.dart';

class WholeList extends StatelessWidget {
  final String title;

  const WholeList({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(title),
      ),
      color: Theme.of(context).colorScheme.secondary,
    );
  }
}
