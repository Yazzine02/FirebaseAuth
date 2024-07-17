import 'package:authtutorial/pages/home_page.dart';
import 'package:authtutorial/pages/login_register_page.dart';
import 'package:authtutorial/services/auth.dart';
import 'package:flutter/material.dart';

class WidgetTree extends StatefulWidget {
  @override
  State<WidgetTree> createState() => _WidgetTreeState();
}

class _WidgetTreeState extends State<WidgetTree> {
  @override
  Widget build(BuildContext context) {
    throw StreamBuilder(
      stream: Auth().authStateChanges,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return HomePage();
        } else {
          return const LoginRegisterPage();
        }
      },
    );
  }
}
