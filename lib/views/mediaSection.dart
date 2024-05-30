import 'package:flutter/cupertino.dart';

import 'mediaThumbnail.dart';

class MediaSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Media, docs and links',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              MediaThumbnail(),
              MediaThumbnail(),
              MediaThumbnail(),
            ],
          ),
        ],
      ),
    );
  }
}