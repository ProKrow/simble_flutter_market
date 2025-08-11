import 'package:flutter/material.dart';
import 'package:simble_flutter_market/dashboard.dart';
import 'package:simble_flutter_market/home.dart';

void main() {
  runApp(
    MaterialApp(
      initialRoute: 'home',
      routes: {
        'home': (context) => Home(),
        'dashboard': (context) => Dashboard(),
      },
    ),
  );
}
