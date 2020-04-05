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
      body: Column(
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
    'Pizze, Sendviči, Salate, Tortilje, Paste, Maslenice, Uštipci, Pomfrit'
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: categories.length,
        itemBuilder: (BuildContext context, index) {
            
        },
        ),
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
