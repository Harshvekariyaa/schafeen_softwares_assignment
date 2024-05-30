import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomSheetContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      height: 200,
      width: MediaQuery.of(context).size.width * 0.6,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextButton(
            onPressed: () {},
            child: ListTile(title: Text('Invite')),
          ),
          TextButton(
            onPressed: () {},
            child: ListTile(title: Text('Add member')),
          ),
          TextButton(
            onPressed: () {},
            child: ListTile(title: Text('Add Group')),
          ),
        ],
      ),
    );
  }
}