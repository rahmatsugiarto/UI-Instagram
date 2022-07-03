import 'package:flutter/material.dart';

class TabItem extends StatelessWidget {
  final IconData icon;
  final bool isActive;

  TabItem({required this.icon, this.isActive = false});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
            padding: EdgeInsets.all(12),
            child: Icon(icon),
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(
                        color: isActive ? Colors.black : Colors.white)))));
  }
}