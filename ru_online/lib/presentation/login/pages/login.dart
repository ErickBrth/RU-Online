import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

import 'package:ru_online/presentation/login/components/login_form_field.dart';
import 'package:ru_online/presentation/shared/components/login%20with%20social/login_with_social.dart';
import 'package:ru_online/presentation/shared/components/yellow_button.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/images/background.png',
              fit: BoxFit.cover,
            ),
          ),
          LayoutBuilder(
            builder: (context, constraints) {
              return SingleChildScrollView(
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    minHeight: constraints.maxHeight,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 35.0),
                    child: IntrinsicHeight(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/rulogo.png',
                            height: 180,
                          ),
                          Row(
                            children: [
                              Text(
                                "Log in",
                                style: Theme.of(context).textTheme.displayLarge,
                              )
                            ],
                          ),
                          const SizedBox(height: 8),
                          const LoginFormField(),
                          const SizedBox(height: 10),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Text(
                              'Forgot the Password?',
                              style: Theme.of(context).textTheme.bodySmall,
                            ),
                          ),
                          const SizedBox(height: 26),
                          const YellowButton(defaultRoute: "/home", shouldReplace: true, title: "Enter",),
                          const SizedBox(height: 26),
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 25),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Divider(
                                    color: Colors.white,
                                    thickness: 1,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                                  child: Text(
                                    'Or enter with',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                                Expanded(
                                  child: Divider(
                                    color: Colors.white,
                                    thickness: 1,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 26),
                          const LoginWithSocial(),
                          const SizedBox(height: 30),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                "Don't have an account? ",
                                style: TextStyle(color: Colors.white, fontSize: 14),
                              ),
                              GestureDetector(
                                onTap: () => context.push("/register"),
                                child: const Text(
                                  'sign up',
                                  style: TextStyle(color: Color(0xFFFAA911), fontSize: 14),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
