import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MemberSection extends StatefulWidget {
  @override
  State<MemberSection> createState() => _MemberSectionState();
}

class _MemberSectionState extends State<MemberSection> {
  Icon custIcon = Icon(Icons.search);

  Widget custText = Text("Member");

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppBar(
          backgroundColor: Colors.white70,
          title: custText,
          actions: <Widget>[
            IconButton(onPressed: (){
              setState(() {
                if(this.custIcon.icon == Icons.search){
                  this.custIcon = Icon(Icons.cancel);
                  this.custText = TextField(
                    style: TextStyle(
                      fontSize: 20,
                      backgroundColor: Colors.white70,
                    ),

                  );
                }else{
                  this.custIcon = Icon(Icons.search);
                  this.custText = Text("Member");
                }
              });
            }, icon: custIcon),
          ],
        ),
        Container(
          height: 200,
          child: ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: 1,
            itemBuilder: (context, index) {
              return ListTile(
                leading: CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage('assets/images/theweekend.png'),
                ),
                title: Text('Yashika'),
                subtitle: Text('26, India'),
                trailing: ElevatedButton(
                  onPressed: () {},
                  child: Text('Add'),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
