import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController textEditingController;
  final String label;
  final Widget? prefixIcon;
  final Widget? SuffixIcon;
  final bool obscureText;
  final TextInputType? keyBordType;
  final FocusNode? focusNode;
  final String? Function(String?)? validator;

  const CustomTextField({
    super.key,
    required this.textEditingController,
    required this.label,
    this.prefixIcon,
    this.SuffixIcon,
    this.obscureText = false,
    this.keyBordType,
    this.focusNode,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: textEditingController,
      obscureText: obscureText,
      focusNode: focusNode,
      validator: validator,
      keyboardType: keyBordType,
      cursorRadius: Radius.circular(10),
      textAlignVertical: TextAlignVertical(y: 0.2),

      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(8),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            width: 1,
            strokeAlign: BorderSide.strokeAlignInside,
            color: Color(0xffDEF1F3),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Color(0xff1D61E7), width: 2),
        ),
        prefixIcon: prefixIcon,
        suffixIcon: SuffixIcon,
        label: Text(label),
      ),
    );
  }
}
