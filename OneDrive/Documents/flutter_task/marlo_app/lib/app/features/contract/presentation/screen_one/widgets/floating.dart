import 'package:flutter/material.dart';

class FloatingButtonWIdget extends StatelessWidget {
  const FloatingButtonWIdget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {},
      child: IconButton(
        icon: const Icon(Icons.add),
        onPressed: () {},
      ),
    );
  }
}
