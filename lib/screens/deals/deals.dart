import 'package:flutter/material.dart';

part 'page.dart';

class Deals extends StatelessWidget {
  const Deals({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: _DealsPage(),
    );
  }
}
