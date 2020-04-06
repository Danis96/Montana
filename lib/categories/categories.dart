import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:montana/categories/categoryList.dart';
import 'package:montana/categories/singleCategory.dart';

class Categories extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: ScreenUtil.instance.setWidth(20.0)),
      child: Row(
        children: <Widget>[
          Expanded(
            child: SizedBox(
              height: 50.0,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                itemBuilder: (BuildContext context, index) {
                  return SingleCategory(categories[index].toString());
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}