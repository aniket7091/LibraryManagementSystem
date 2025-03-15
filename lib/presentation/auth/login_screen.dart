import 'dart:ffi';

import 'package:chat_mate/common/Custom_button.dart';
import 'package:chat_mate/common/Custom_social_button.dart';
import 'package:chat_mate/common/Custom_textfield.dart';
import 'package:chat_mate/common/line.dart';
import 'package:chat_mate/presentation/auth/Sign_up.dart';
import 'package:chat_mate/presentation/auth/forget_password.dart';
import 'package:chat_mate/presentation/general/bottom_navigation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:icons_plus/icons_plus.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final _emailFocus = FocusNode();
  final _passwordFocus = FocusNode();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    _emailFocus.dispose();
    _passwordFocus.dispose();
    super.dispose();
  }

  late bool _isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 397,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xff2567E8),
              image: DecorationImage(
                image: AssetImage('assets/images/Star.png'),
              ),
            ),
          ),
          SafeArea(
            child: Column(
              children: [
                Gap(12),
                Center(
                  child: SizedBox(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 28,
                          width: 28,
                          child: Image.asset('assets/images/chat.png'),
                        ),
                        Gap(20),
                        Text(
                          'Sign in to your',
                          style: GoogleFonts.inter(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'Account',
                          style: GoogleFonts.inter(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        Gap(12),
                        Text(
                          'Enter your email and password to log in ',
                          style: GoogleFonts.inter(
                            fontSize: 12,
                            fontWeight: FontWeight.normal,
                            color: Colors.white,
                          ),
                        ),
                        Gap(26),

                        // for all input field
                        Container(
                          height: 420,
                          width: 327,
                          decoration: BoxDecoration(
                            color: Color(0xffFFFFFF),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            children: [
                              Gap(24),

                              // for Google login button
                              SizedBox(
                                height: 48,
                                width: 279,
                                child: CustomSocialButton(
                                  onPressed: () {},
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        height: 18,
                                        width: 18,
                                        child: Image.asset(
                                          'assets/images/google.png',
                                        ),
                                      ),
                                      Gap(10),
                                      Text(
                                        'Continue with Google',
                                        style: GoogleFonts.inter(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xff1A1C1E),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Gap(24),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 12,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Line(),
                                    Text(
                                      'Or login with',
                                      style: GoogleFonts.inter(
                                        fontWeight: FontWeight.normal,
                                        fontSize: 12,
                                        color: Colors.grey,
                                      ),
                                    ),
                                    Line(),
                                  ],
                                ),
                              ),
                              Gap(24),

                              // for Email Text field
                              SizedBox(
                                width: 279,
                                height: 46,
                                child: CustomTextField(
                                  focusNode: _emailFocus,
                                  textEditingController: emailController,
                                  label: 'Email',
                                  prefixIcon: Icon(CupertinoIcons.mail_solid),
                                ),
                              ),
                              Gap(16),

                              // for password textField;
                              SizedBox(
                                width: 279,
                                height: 46,
                                child: CustomTextField(
                                  focusNode: _passwordFocus,
                                  textEditingController: passwordController,
                                  label: 'Password',
                                  prefixIcon: Icon(CupertinoIcons.lock_fill),
                                  obscureText: !_isPasswordVisible,
                                  keyBordType: TextInputType.text,
                                  SuffixIcon: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        _isPasswordVisible =
                                            !_isPasswordVisible;
                                      });
                                    },
                                    icon: Icon(
                                      _isPasswordVisible
                                          ? CupertinoIcons.eye_fill
                                          : CupertinoIcons.eye_slash_fill,
                                    ),
                                  ),
                                ),
                              ),
                              Gap(16),

                              // for forget button
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 24,
                                ),
                                child: Align(
                                  alignment: Alignment.topRight,
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder:
                                              (context) => ForgetPassword(),
                                        ),
                                      );
                                    },
                                    child: Text(
                                      'Forgot Password ?',
                                      style: GoogleFonts.inter(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xff4D81E7),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Gap(24),

                              // for login button
                              SizedBox(
                                height: 48,
                                width: 279,
                                child: CustomButton(
                                  onPressed: () {
                                    Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => bottom_screen(),
                                      ),
                                    );
                                  },
                                  child: Text(
                                    "Log In",
                                    style: GoogleFonts.inter(
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                              Gap(24),

                              // for Sign in button
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Don’t have an account?',
                                    style: GoogleFonts.inter(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  Gap(10),
                                  InkWell(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => SignUpScreen(),
                                        ),
                                      );
                                    },
                                    child: Text(
                                      'Sign Up',
                                      style: GoogleFonts.inter(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xff4D81E7),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
