import 'package:flutter/material.dart';
import 'package:supa_chat_flutter/widgets/app_logo.dart';
import 'package:supa_chat_flutter/widgets/app_text_form_field.dart';

import '../widgets/app_button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const AppLogo(),
              const Text(
                'Welcom back',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Form(
                child: Column(
                  children: [
                    AppTextFormField(
                      labelText: 'Email address',
                    ),
                    AppTextFormField(
                      labelText: 'Password',
                      obscureText: true,
                    ),
                  ],
                ),
              ),
              AppButton(
                height: 48,
                onPressed: () {},
                text: 'Continue',
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text("Don't have an account?"),
                  TextButton(
                    onPressed: () {},
                    child: const Text('Sign up'),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
