import 'dart:io';

import 'package:CoKitchen/screens/screens.dart';
import 'package:CoKitchen/util/utils.dart';
import 'package:CoKitchen/widgets/widget.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

part 'page.dart';
part 'landing.dart';

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: HomePage(),
    );
  }
}
