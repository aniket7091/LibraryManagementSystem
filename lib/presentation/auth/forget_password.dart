import 'package:chat_mate/common/Custom_button.dart';
import 'package:chat_mate/common/Custom_textfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  final TextEditingController forgetPasswordController =
      TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: BackButton()),

      body: SafeArea(
        child: Form(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Gap(20),
                Text(
                  'Forgot',
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.bold,
                    fontSize: 42,
                    color: Color(0xff1D61E7),
                  ),
                ),
                Text(
                  'password?',
                  style: GoogleFonts.inter(
                    fontSize: 42,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff1D61E7),
                  ),
                ),
                Text(
                  'Enter your email for the verification process,\nwe will send code to your email',
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                    color: Color(0xff2C2C2C),
                  ),
                ),
                Gap(80),

                // for forgetPassword Email text field
                CustomTextField(
                  textEditingController: forgetPasswordController,
                  label: 'Email',
                  prefixIcon: Icon(
                    CupertinoIcons.mail_solid,
                    color: Color(0xff1D61E7).withOpacity(0.8),
                  ),
                  keyBordType: TextInputType.text,
                ),
                Gap(50),
                SizedBox(
                  height: 48,
                  width: 342,
                  child: CustomButton(
                    onPressed: () {},
                    child: Text(
                      'Continue',
                      style: GoogleFonts.inter(
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
