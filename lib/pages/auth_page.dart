import 'package:firebase_logsign/pages/home_page.dart';
import 'package:firebase_logsign/pages/login_or_register_page.dart';
import 'package:firebase_logsign/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return HomePage();
            } else {
              return LoginOrRegisterPage();
            }
          }),
    );
  }
}
