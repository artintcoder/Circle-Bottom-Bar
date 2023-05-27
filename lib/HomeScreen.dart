// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:circlenavbar/widget/Nav_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(bottomNavigationBar: Navbar());
  }
}
