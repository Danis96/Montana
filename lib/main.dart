import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:montana/constants/colors.dart';
import 'package:montana/utils/screenUtils.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      theme: ThemeData.dark(),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Image.asset('assets/montana-logo.png'),
      ),
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Drawer Header'),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text('Item 1'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              title: Text('Item 2'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
          ],
        ),
      ),
      body: ListView(
        children: <Widget>[
          /// headline widget
          Headline(),

          /// categories widget
          Categories(),
        ],
      ),
    );
  }
}

class Categories extends StatelessWidget {
  List<String> categories = [
    'Pizze',
    'Sendviči',
    'Salate',
    'Tortilje',
    'Paste',
    'Maslenice',
    'Uštipci',
    'Pomfrit'
  ];

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
      child: Center(child: Container(child: Text(category))),
    );
  }
}

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
