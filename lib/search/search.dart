import 'package:flappy_search_bar/flappy_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:montana/constants/colors.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenUtil.instance.setWidth(100.0),
      margin: EdgeInsets.only(top: ScreenUtil.instance.setWidth(20.0)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Container(
          child: SearchBar(

            icon: Icon(Icons.search),
            iconActiveColor: MyColors().main,
            hintText: 'Pretraga',
            onItemFound: (item, int index) {},
            onSearch: (String text) {},
            textStyle: TextStyle(color: MyColors().white),
          ),
        ),
      ),
    );
  }
}


