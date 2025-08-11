import 'package:flutter/material.dart';
import 'package:simble_flutter_market/app_components/body.dart';
import 'package:simble_flutter_market/app_components/navbar.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Body(),
      bottomNavigationBar: Navbar(),
    );
  }
}
