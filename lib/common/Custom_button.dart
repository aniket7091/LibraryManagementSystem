import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Function()? onPressed;
  final String? text;
  final Widget? child;

  const CustomButton({
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
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xff1D61E7),
          foregroundColor: Colors.black87,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child:
            child ??
            Text(
              text!,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
      ),
    );
  }
}
