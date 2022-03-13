import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:uiux/constant/utils.dart';
import 'package:uiux/screens/home_screen.dart';
import 'package:uiux/screens/register_screen.dart';
import 'package:uiux/widgets/button_widgets.dart';
import 'package:uiux/widgets/textfield_widgets.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          padding:
              const EdgeInsets.only(top: 40, left: 18, right: 18, bottom: 34),
          decoration: const BoxDecoration(color: Colors.white),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Log in', style: kRubikLight18),
              const SizedBox(height: 8),
              Text('Sign In to continue',
                  style: kRubikLight14.copyWith(
                    color: const Color(0xff6A6A6A),
                  )),
              const SizedBox(height: 28),
              const Text('Username', style: kRubikRegular14),
              const SizedBox(height: 8),
              TextFieldWidget(
                hintext: 'Input username',
                textInputType: TextInputType.text,
                isPassword: false,
                iconPrefix: const Icon(Icons.person, color: Color(0xff5F6F8C)),
              ),
              const SizedBox(height: 16),
              const Text('Password', style: kRubikRegular14),
              const SizedBox(height: 8),
              TextFieldWidget(
                hintext: 'Input password',
                textInputType: TextInputType.text,
                isPassword: true,
                iconPrefix: const Icon(Icons.lock, color: Color(0xff5F6F8C)),
              ),
              const SizedBox(height: 40),
              ButtonWidget(
                style: kRubikBold14.copyWith(color: Colors.white),
                text: 'Log in',
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomeScreen()));
                },
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Text.rich(
                    TextSpan(children: [
                      const TextSpan(
                          text: "Don't have an account? ",
                          style: kRubikLight14),
                      TextSpan(
                        text: 'Sign up',
                        style: kRubikBold14,
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const RegisterScreen()));
                          },
                      )
                    ]),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
