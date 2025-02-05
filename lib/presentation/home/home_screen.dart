import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_template/theme/theme.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
        backgroundColor: MyTheme.color.primary,
      ),
    );
  }
}
