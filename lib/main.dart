import 'package:flutter/material.dart';
import 'package:mussles/core/theme.dart';
import 'package:mussles/views/auth/splash.dart';
import 'package:mussles/views/main/home/view.dart';

import 'views/main/profile/security.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Mussles",
      theme: AppTheme.light,
      home: SecurityView(),
    );
  }
}
