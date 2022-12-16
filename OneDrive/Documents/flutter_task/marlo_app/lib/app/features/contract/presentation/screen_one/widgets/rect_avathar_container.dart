import 'package:flutter/material.dart';

class RectContainer extends StatelessWidget {
  const RectContainer({
    Key? key,
    required this.title,
    required this.color,
  }) : super(key: key);
  final String title;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 40,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        color: color,
      ),
      child: Center(
        child: Text(
          title,
        ),
      ),
    );
  }
}
