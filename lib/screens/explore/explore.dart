import 'package:flutter/material.dart';

part 'page.dart';

class Explore extends StatelessWidget {
  const Explore({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: _ExplorePage(),
    );
  }
}
