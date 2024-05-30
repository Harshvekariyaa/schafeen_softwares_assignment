import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MediaThumbnail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      color: Colors.grey[300],
      child: Image.asset('assets/images/theweekend.png', fit: BoxFit.cover),
    );
  }
}