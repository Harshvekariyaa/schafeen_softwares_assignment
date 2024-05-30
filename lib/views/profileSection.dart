import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Column(
        children: [
          // Text(
          //   'The Weeknd',
          //   style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          // ),
          // SizedBox(height: 5),
          // Text(
          //   'Community - 1K+ Members',
          //   style: TextStyle(fontSize: 16, color: Colors.grey),
          // ),
          SizedBox(height: 10),
          Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed euismod vestibulum lacus, nec consequat felis efficitur sit amet.',
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}