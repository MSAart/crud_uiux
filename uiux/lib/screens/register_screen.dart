import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:uiux/constant/utils.dart';
import 'package:uiux/widgets/button_widgets.dart';
import 'package:uiux/widgets/textfield_widgets.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

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
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                    alignment: Alignment.centerLeft,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.arrow_back_ios_new),
                  ),
                  Text('Sign Up',
                      style: kRubikLight18.copyWith(
                          color: const Color(0xff6A6A6A))),
                ],
              ),
              const SizedBox(height: 8),
              Text('Register to create an account',
                  style: kRubikLight14.copyWith(
                    color: const Color(0xff6A6A6A),
                  )),
              const SizedBox(height: 28),
              const Text('Name', style: kRubikRegular14),
              const SizedBox(height: 8),
              TextFieldWidget(
                hintext: 'Input name here',
                textInputType: TextInputType.text,
                isPassword: false,
                iconPrefix: const Icon(Icons.person, color: Color(0xff5F6F8C)),
              ),
              const SizedBox(height: 16),
              const Text('Email', style: kRubikRegular14),
              const SizedBox(height: 8),
              TextFieldWidget(
                hintext: 'Input Email here',
                textInputType: TextInputType.emailAddress,
                isPassword: false,
                iconPrefix: const Icon(Icons.mail, color: Color(0xff5F6F8C)),
              ),
              const SizedBox(height: 16),
              const Text('Password', style: kRubikRegular14),
              const SizedBox(height: 8),
              TextFieldWidget(
                hintext: 'Input password here',
                textInputType: TextInputType.text,
                isPassword: true,
                iconPrefix: const Icon(Icons.lock, color: Color(0xff5F6F8C)),
              ),
              const SizedBox(height: 40),
              ButtonWidget(
                onPressed: () {},
                text: 'Sign In',
                style: kRubikBold14.copyWith(color: Colors.white),
              ),
              Expanded(
                flex: 2,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Text.rich(
                    TextSpan(children: [
                      const TextSpan(
                          text: "Already have an account? ",
                          style: kRubikLight14),
                      TextSpan(
                        text: 'Log in',
                        style: kRubikBold14,
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.pop(context);
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
