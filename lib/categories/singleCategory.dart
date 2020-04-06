import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:montana/constants/colors.dart';

class SingleCategory extends StatelessWidget {
  final String category;
  SingleCategory(this.category);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: ScreenUtil.instance.setWidth(14.0)),
      height: 70.0,
      width: 110.0,
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: new BorderRadius.circular(33.5),
        border: Border.all(color: MyColors().mainSecond),
      ),
      child: Center(child: Container(child: Text(category, style: TextStyle(color: MyColors().mainSecond),))),
    );
  }
}
