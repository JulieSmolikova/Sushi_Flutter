import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  const Buttons({Key? key,
    required this.color,
    required this.onPress,
    required this.child}) : super(key: key);

  final Color color;
  final Function() onPress;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        width: 80,
        height: 50,
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: color,
          border: Border.all(width: 2, color: Colors.white),
          borderRadius: BorderRadius.circular(20)
        ),
        child: child,
      ),
    );
  }
}
