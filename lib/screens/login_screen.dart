import 'package:flutter/material.dart';
import 'package:zoomclone/resources/auth_methods.dart';
import 'package:zoomclone/widgets/custom_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final AuthMethods _authMethods = AuthMethods();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Start or join a meeting',
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 38.0),
              child: Image.asset('assets/images/onboarding.jpg'),
            ),
            CustomButton(
              text: 'Google Sign In',
              onPressed: () async {
                bool res = await _authMethods.signInWithGoogle(context);
                if (res) {
                  Navigator.pushNamed(context, '/home');
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}