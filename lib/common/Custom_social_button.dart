import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomSocialButton extends StatelessWidget {
  final Function()? onPressed;
  final String? text;
  final Widget? child;
  const CustomSocialButton({
    super.key,
    required this.onPressed,
    this.text,
    this.child,
  }) : assert(
         text != null || child != null,
         'Either text or child must be provided',
       );

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 10),
        backgroundColor: Color(0xffFFFFFF),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        side: BorderSide(strokeAlign: 2, color: Color(0xffEFF0F6)),
      ),
      child:
          child ??
          Text(
            text!,
            style: GoogleFonts.inter(
              fontWeight: FontWeight.w600,
              fontSize: 14,
              color: Color(0xff1A1C1E),
            ),
          ),
    );
  }
}
