import 'package:flutter/cupertino.dart';

class Line extends StatelessWidget {
  const Line({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 88,
      child: DecoratedBox(
        decoration: BoxDecoration(
          border: Border.all(strokeAlign: 0, color: Color(0xFFD3D3D3)),
        ),
      ),
    );
  }
}
