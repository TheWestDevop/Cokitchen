import 'package:flutter/material.dart';

part 'page.dart';

class Orders extends StatelessWidget {
  const Orders({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: _OrdersPage(),
    );
  }
}
