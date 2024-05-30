import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MemberSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: 10,
      itemBuilder: (context, index) {
        return ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage('https://via.placeholder.com/150'),
          ),
          title: Text('Yashika'),
          subtitle: Text('26, India'),
          trailing: ElevatedButton(
            onPressed: () {},
            child: Text('Add'),
          ),
        );
      },
    );
  }
}
