import 'package:flutter/material.dart';
import 'package:mussles/core/theme.dart';

class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CircularProgressIndicator(
        color: AppTheme.secondary,
      ),
      appBar: AppBar(title: Text("Hi, Welcome Back! 👋"),),
      floatingActionButton: FloatingActionButton(
        onPressed: () {

        },
      ),
    );
  }
}
