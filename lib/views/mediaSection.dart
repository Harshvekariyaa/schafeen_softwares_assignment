import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'mediaThumbnail.dart';
import 'memberSection.dart';

class MediaSection extends StatefulWidget {

  @override
  State<MediaSection> createState() => _MediaSectionState();
}

class _MediaSectionState extends State<MediaSection> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Media, docs and links',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Icon(Icons.arrow_forward_ios,color: Colors.black,size: 20,)
            ],
          ),
          SizedBox(height: 10),
          Container(
            height: 80,
            child: ListView.separated(
              itemBuilder: (context, index) => MediaThumbnail(),
              itemCount: 9,
              scrollDirection: Axis.horizontal,
              shrinkWrap: true, separatorBuilder: (BuildContext context, int index) { return SizedBox(width: 10,); },
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Mute notification",style: TextStyle(color: Colors.black,fontSize: 18),),
                Switch(
                    value: isSwitched,
                  activeColor: Colors.red,

                  onChanged: (value){
                  setState(() {
                    isSwitched = value;
                  });
                })
              ],
            ),
          ),

          InkWell(
            onTap: (){},
            child: ListTile(
              leading: Icon(Icons.delete,size: 22,),
              title: Text("Clear chat",style: TextStyle(fontSize: 17),),
            ),
          ),

          InkWell(
            onTap: (){},
            child: ListTile(
              leading: Icon(Icons.lock,size: 22,),
              title: Text("Encryption",style: TextStyle(fontSize: 17),),
            ),
          ),

          InkWell(
            onTap: (){},
            child: ListTile(
              leading: Icon(Icons.exit_to_app,size: 22,color: Colors.red,),
              title: Text("Exit community",style: TextStyle(fontSize: 17,color: Colors.red),),
            ),
          ),

          InkWell(
            onTap: (){},
            child: ListTile(
              leading: Icon(Icons.thumb_down,size: 22,color: Colors.red,),
              title: Text("Report",style: TextStyle(fontSize: 17,color: Colors.red),),
            ),
          ),


          MemberSection()
        ],
      ),
    );
  }
}