import 'dart:ffi';

import 'package:chat_mate/common/Custom_button.dart';
import 'package:chat_mate/common/Custom_social_button.dart';
import 'package:chat_mate/common/Custom_textfield.dart';
import 'package:chat_mate/common/line.dart';
import 'package:chat_mate/presentation/auth/login_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:icons_plus/icons_plus.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController fullNameController = TextEditingController();
  final TextEditingController uIdController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final _nameFocus = FocusNode();
  final _uNameFocus = FocusNode();
  final _emailFocus = FocusNode();
  final _phoneFocus = FocusNode();
  final _passwordFocus = FocusNode();

  @override
  void dispose() {
    fullNameController.dispose();
    uIdController.dispose();
    emailController.dispose();
    phoneController.dispose();
    passwordController.dispose();
    _nameFocus.dispose();
    _uNameFocus.dispose();
    _emailFocus.dispose();
    _phoneFocus.dispose();
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
                Gap(56),
                Center(
                  child: SizedBox(
                    child: Text(
                      "Sign Up",
                      style: GoogleFonts.inter(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Gap(10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already have an account?',
                      style: GoogleFonts.inter(
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                        color: Colors.white,
                      ),
                    ),
                    Gap(5),
                    InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen(),));
                      },
                      child: Text(
                        'Log In',
                        style: GoogleFonts.inter(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color:  Color(0xffFFFFFF),
                        ),
                      ),
                    ),
                  ],
                ),
                Gap(28),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 24, horizontal: 24),
                  width: 327,
                  height: 540,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      Gap(10),

                      // full name
                      SizedBox(
                        width: double.infinity,
                        height: 46,
                        child: CustomTextField(
                          textEditingController: fullNameController,
                          label: 'Full Name',
                          focusNode: _nameFocus,
                          keyBordType: TextInputType.text,
                          prefixIcon: Icon(Bootstrap.person),
                        ),
                      ),
                      Gap(16),

                      // UserNme
                      SizedBox(
                        width: double.infinity,
                        height: 46,
                        child: CustomTextField(
                          textEditingController: uIdController,
                          label: 'User Id',
                          focusNode: _uNameFocus,
                          prefixIcon: Icon(CupertinoIcons.at),
                          keyBordType: TextInputType.text,
                        ),
                      ),
                      Gap(16),

                      //email
                      SizedBox(
                        width: double.infinity,
                        height: 46,
                        child: CustomTextField(
                          focusNode: _emailFocus,
                          textEditingController: emailController,
                          label: 'Email',
                          keyBordType: TextInputType.text,
                          prefixIcon: Icon(CupertinoIcons.mail_solid),
                        ),
                      ),
                      Gap(16),

                      //phone
                      SizedBox(
                        width: double.infinity,
                        height: 46,
                        child: CustomTextField(
                          textEditingController: phoneController,
                          focusNode: _phoneFocus,
                          label: 'Phone',
                          prefixIcon: Icon(CupertinoIcons.phone_fill),
                          keyBordType: TextInputType.text,
                        ),
                      ),
                      Gap(16),

                      //password
                      SizedBox(
                        width: double.infinity,
                        height: 46,
                        child: CustomTextField(
                          focusNode: _passwordFocus,
                          textEditingController: passwordController,
                          label: 'Password',
                          keyBordType: TextInputType.text,
                          obscureText: !_isPasswordVisible,
                          prefixIcon: Icon(CupertinoIcons.lock_fill),
                          SuffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                _isPasswordVisible = !_isPasswordVisible;
                              });
                            },
                            icon: Icon(
                              _isPasswordVisible
                                  ? CupertinoIcons.eye
                                  : CupertinoIcons.eye_slash,
                            ),
                          ),
                        ),
                      ),
                      Gap(24),

                      // Sign in Button
                      SizedBox(
                        width: double.infinity,
                        height: 48,
                        child: CustomButton(
                          onPressed: () {
                          },
                          child: Text(
                            'Sign In',
                            style: GoogleFonts.inter(
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Gap(24),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Line(),
                          Text(
                            'Or',
                            style: GoogleFonts.inter(
                              fontSize: 12,
                              fontWeight: FontWeight.normal,
                              color: Colors.grey,
                            ),
                          ),
                          Line(),
                        ],
                      ),
                      Gap(24),

                      // for google Sign In
                      SizedBox(
                        height: 48,
                        width: double.infinity,
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
                    ],
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
