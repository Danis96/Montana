import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:montana/constants/colors.dart';
import 'package:montana/utils/screenUtils.dart';

class Headline extends StatelessWidget {
  const Headline({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Constant().responsive(context);
    return Container(
      padding: EdgeInsets.all(10.0),
      margin: EdgeInsets.only(left: ScreenUtil.instance.setWidth(26.0)),
      child: Text('Ostaju \nsamo mrvice',
          style: TextStyle(
              fontSize: ScreenUtil.instance.setSp(42.0),
              color: MyColors().main)),
    );
  }
}