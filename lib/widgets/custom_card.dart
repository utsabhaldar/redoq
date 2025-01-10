import 'package:flutter/material.dart';
import 'package:redoq/widgets/container_decoration.dart';

class CustomCard extends StatelessWidget {
  final Widget? content;
  const CustomCard({
    super.key,
    this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: cardDecoration(),
      child: content,
    );
  }
}
