import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomSheetContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      height: 250,
      width: MediaQuery.of(context).size.width * 0.7,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextButton(
            onPressed: () {},
            child: ListTile(title: Text('Invite'),leading: Icon(Icons.link,size: 20,),),
          ),
          TextButton(
            onPressed: () {},
            child: ListTile(title: Text('Add member'),leading: Icon(Icons.person_add,size: 20,),),
          ),
          TextButton(
            onPressed: () {},
            child: ListTile(title: Text('Add Group'),leading: Icon(Icons.people,size: 20,),),
          ),
        ],
      ),
    );
  }
}