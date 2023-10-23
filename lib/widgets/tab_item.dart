import 'package:flutter/material.dart';

class TabItem extends StatelessWidget {
  final IconData icon;
  final bool isActive;

  const TabItem({super.key, required this.icon, this.isActive = false});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(
                        color: isActive ? Colors.black : Colors.white))),
            child: Icon(icon)));
  }
}
