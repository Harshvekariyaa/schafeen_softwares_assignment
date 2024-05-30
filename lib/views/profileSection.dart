import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import 'mediaSection.dart';
import 'memberSection.dart';
import 'profileSection_outlinebutton.dart';

class ProfileSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Column(
        children: [
          SizedBox(height: 10),
          ReadMoreText(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed euismod vestibulum lacus, nec consequat felis efficitur sit ametLorem ipsum dolor sit amet, consectetur adipiscing elit. Sed euismod vestibulum lacus, nec consequat felis efficitur sit amet.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed euismod vestibulum lacus, nec consequat felis efficitur sit amet.'
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed euismod vestibulum lacus, nec consequat felis efficitur sit  amet.',
            lessStyle: TextStyle(color: Colors.red, fontSize: 16),
            moreStyle: TextStyle(color: Colors.blue, fontSize: 16),
          ),
          SizedBox(height: 5,),
          Container(
            height: 30,
            padding: EdgeInsets.all(5),
            margin: EdgeInsets.all(5),
            child: ListView.separated(
              itemBuilder: (context, index) =>
                  profileSection_outlinebutton().customBTN(),
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              // physics: NeverScrollableScrollPhysics(),
              itemCount: 10, separatorBuilder: (BuildContext context, int index) {
                return SizedBox(width: 5,);
            },
            ),
          ),
          MediaSection(),
        ],
      ),
    );
  }
}
