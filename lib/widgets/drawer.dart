import 'package:flutter/material.dart';

import '../constants.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppColours.background,
      child: Text('THis is the drawer'),
    );
  }
}
