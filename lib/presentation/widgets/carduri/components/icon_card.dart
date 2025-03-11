import 'package:flutter/material.dart';

class IconCard extends StatelessWidget {
  final IconData icon;
  const IconCard({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(8),
      ),
      alignment: Alignment.center,
      child: Icon(icon, size: 30, color: Colors.grey[700]),
    );
  }
}
