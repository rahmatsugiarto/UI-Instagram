import 'package:flutter/material.dart';

class StoryItemAdd extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                height: 65,
                width: 65,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Colors.black,
                ),
              ),
              Container(
                height: 63,
                width: 63,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Colors.white,
                ),
                child: Icon(Icons.add),
              ),
            ],
          ),
          SizedBox(height: 5),
          Text("New")
        ],
      ),
    );
  }
}
