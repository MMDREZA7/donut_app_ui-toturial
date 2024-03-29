import 'package:flutter/material.dart';

class MyTab extends StatelessWidget {
  final String iconPath;

  const MyTab({
    super.key,
    required this.iconPath,
  });

  @override
  Widget build(BuildContext context) {
    return Tab(
      height: 80,
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.green[100],
        ),
        child: Image.asset(
          iconPath,
          color: Colors.black,
        ),
      ),
    );
  }
}
