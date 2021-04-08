import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: const [
            Text('SimpleWeather'),
          ],
        ),
      ),
    );
  }
}
